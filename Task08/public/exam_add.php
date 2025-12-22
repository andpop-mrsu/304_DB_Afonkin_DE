<?php
/**
 * Добавление результата экзамена
 */

require_once __DIR__ . '/../config.php';

$error = null;
$student = null;
$students = [];
$subjects = [];
$student_id = (int)($_GET['student_id'] ?? 0);
$course_year = (int)($_GET['course_year'] ?? 1);

try {
    $pdo = getDB();
    
    // Получение списка студентов
    $stmt = $pdo->query("
        SELECT s.id, s.last_name, s.first_name, s.middle_name, g.group_number
        FROM students s
        INNER JOIN groups g ON s.group_id = g.id
        ORDER BY g.group_number, s.last_name, s.first_name
    ");
    $students = $stmt->fetchAll(PDO::FETCH_ASSOC);
    
    // Если указан student_id, получаем данные студента
    if ($student_id) {
        $stmt = $pdo->prepare("
            SELECT s.*, g.group_number
            FROM students s
            INNER JOIN groups g ON s.group_id = g.id
            WHERE s.id = ?
        ");
        $stmt->execute([$student_id]);
        $student = $stmt->fetch();
        
        if (!$student) {
            header('Location: index.php?error=Студент не найден');
            exit;
        }
    }
    
    // Обработка формы
    if ($_SERVER['REQUEST_METHOD'] === 'POST') {
        $student_id = (int)($_POST['student_id'] ?? 0);
        $subject_id = (int)($_POST['subject_id'] ?? 0);
        $exam_date = $_POST['exam_date'] ?? '';
        $grade = (int)($_POST['grade'] ?? 0);
        $course_year = (int)($_POST['course_year'] ?? 1);
        
        // Валидация
        if (empty($student_id) || empty($subject_id) || empty($exam_date) || empty($grade)) {
            $error = "Заполните все обязательные поля.";
        } elseif ($grade < 2 || $grade > 5) {
            $error = "Оценка должна быть от 2 до 5.";
        } else {
            // Проверка существования студента и предмета
            $stmt = $pdo->prepare("SELECT id FROM students WHERE id = ?");
            $stmt->execute([$student_id]);
            if (!$stmt->fetch()) {
                $error = "Студент не найден.";
            } else {
                $stmt = $pdo->prepare("SELECT id FROM subjects WHERE id = ?");
                $stmt->execute([$subject_id]);
                if (!$stmt->fetch()) {
                    $error = "Дисциплина не найдена.";
                } else {
                    // Вставка данных
                    $stmt = $pdo->prepare("
                        INSERT INTO exams (student_id, subject_id, exam_date, grade)
                        VALUES (?, ?, ?, ?)
                    ");
                    $stmt->execute([$student_id, $subject_id, $exam_date, $grade]);
                    
                    header('Location: student_exams.php?student_id=' . $student_id . '&success=Результат экзамена успешно добавлен');
                    exit;
                }
            }
        }
        
        // Обновить курс для фильтрации предметов
        if (isset($_POST['course_year'])) {
            $course_year = (int)$_POST['course_year'];
        }
    }
    
    // Получение списка предметов для выбранного курса
    if ($student_id) {
        // Определяем специализацию студента из группы
        $stmt = $pdo->prepare("
            SELECT g.specialization_id
            FROM students s
            INNER JOIN groups g ON s.group_id = g.id
            WHERE s.id = ?
        ");
        $stmt->execute([$student_id]);
        $studentGroup = $stmt->fetch();
        
        if ($studentGroup) {
            $specialization_id = $studentGroup['specialization_id'];
            
            $stmt = $pdo->prepare("
                SELECT id, name, course_year, assessment_type
                FROM subjects
                WHERE specialization_id = ? AND course_year = ? AND assessment_type = 'exam'
                ORDER BY name
            ");
            $stmt->execute([$specialization_id, $course_year]);
            $subjects = $stmt->fetchAll(PDO::FETCH_ASSOC);
        }
    } else {
        // Если студент не выбран, показываем все предметы для выбранного курса
        $stmt = $pdo->prepare("
            SELECT id, name, course_year, assessment_type
            FROM subjects
            WHERE course_year = ? AND assessment_type = 'exam'
            ORDER BY name
        ");
        $stmt->execute([$course_year]);
        $subjects = $stmt->fetchAll(PDO::FETCH_ASSOC);
    }
    
} catch (PDOException $e) {
    $error = "Ошибка базы данных: " . $e->getMessage();
}
?>
<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Добавить результат экзамена</title>
    <link rel="stylesheet" href="style.css">
</head>
<body>
    <div class="container">
        <h1>Добавить результат экзамена</h1>
        
        <?php if ($error !== null): ?>
            <div class="alert alert-error">
                <?= htmlspecialchars($error) ?>
            </div>
        <?php endif; ?>
        
        <form method="POST" class="form" id="examForm">
            <div class="form-group">
                <label for="student_id">Студент *</label>
                <select id="student_id" name="student_id" required onchange="updateSubjects()">
                    <option value="">Выберите студента</option>
                    <?php foreach ($students as $s): ?>
                        <option value="<?= $s['id'] ?>" 
                                <?= ($student_id == $s['id']) ? 'selected' : '' ?>>
                            <?= htmlspecialchars($s['group_number'] . ' - ' . $s['last_name'] . ' ' . $s['first_name'] . ' ' . ($s['middle_name'] ?? '')) ?>
                        </option>
                    <?php endforeach; ?>
                </select>
            </div>
            
            <div class="form-group">
                <label for="course_year">Курс обучения на момент сдачи экзамена *</label>
                <select id="course_year" name="course_year" required onchange="updateSubjects()">
                    <?php for ($i = 1; $i <= 6; $i++): ?>
                        <option value="<?= $i ?>" <?= ($course_year == $i) ? 'selected' : '' ?>>
                            <?= $i ?> курс
                        </option>
                    <?php endfor; ?>
                </select>
            </div>
            
            <div class="form-group">
                <label for="subject_id">Дисциплина *</label>
                <select id="subject_id" name="subject_id" required>
                    <option value="">Выберите дисциплину</option>
                    <?php foreach ($subjects as $subject): ?>
                        <option value="<?= $subject['id'] ?>" 
                                <?= (($_POST['subject_id'] ?? '') == $subject['id']) ? 'selected' : '' ?>>
                            <?= htmlspecialchars($subject['name']) ?>
                        </option>
                    <?php endforeach; ?>
                </select>
            </div>
            
            <div class="form-group">
                <label for="exam_date">Дата экзамена *</label>
                <input type="date" id="exam_date" name="exam_date" required 
                       value="<?= htmlspecialchars($_POST['exam_date'] ?? '') ?>">
            </div>
            
            <div class="form-group">
                <label for="grade">Оценка *</label>
                <select id="grade" name="grade" required>
                    <option value="">Выберите оценку</option>
                    <option value="5" <?= (($_POST['grade'] ?? '') == 5) ? 'selected' : '' ?>>5 (Отлично)</option>
                    <option value="4" <?= (($_POST['grade'] ?? '') == 4) ? 'selected' : '' ?>>4 (Хорошо)</option>
                    <option value="3" <?= (($_POST['grade'] ?? '') == 3) ? 'selected' : '' ?>>3 (Удовлетворительно)</option>
                    <option value="2" <?= (($_POST['grade'] ?? '') == 2) ? 'selected' : '' ?>>2 (Неудовлетворительно)</option>
                </select>
            </div>
            
            <div class="form-actions">
                <button type="submit" class="btn btn-primary">Сохранить</button>
                <?php if ($student_id): ?>
                    <a href="student_exams.php?student_id=<?= $student_id ?>" class="btn btn-secondary">Отмена</a>
                <?php else: ?>
                    <a href="index.php" class="btn btn-secondary">Отмена</a>
                <?php endif; ?>
            </div>
        </form>
    </div>
    
    <script>
        function updateSubjects() {
            const studentId = document.getElementById('student_id').value;
            const courseYear = document.getElementById('course_year').value;
            
            if (studentId && courseYear) {
                // Перезагружаем страницу с новыми параметрами
                window.location.href = 'exam_add.php?student_id=' + studentId + '&course_year=' + courseYear;
            }
        }
    </script>
</body>
</html>

