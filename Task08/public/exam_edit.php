<?php
/**
 * Редактирование результата экзамена
 */

require_once __DIR__ . '/../config.php';

$error = null;
$exam = null;
$subjects = [];
$id = (int)($_GET['id'] ?? 0);
$student_id = (int)($_GET['student_id'] ?? 0);

if (!$id) {
    header('Location: index.php');
    exit;
}

try {
    $pdo = getDB();
    
    // Получение данных экзамена
    $stmt = $pdo->prepare("
        SELECT e.*, sub.course_year, sub.specialization_id
        FROM exams e
        INNER JOIN subjects sub ON e.subject_id = sub.id
        WHERE e.id = ?
    ");
    $stmt->execute([$id]);
    $exam = $stmt->fetch();
    
    if (!$exam) {
        header('Location: index.php?error=Результат экзамена не найден');
        exit;
    }
    
    if (!$student_id) {
        $student_id = $exam['student_id'];
    }
    
    // Получение данных студента
    $stmt = $pdo->prepare("
        SELECT s.*, g.group_number
        FROM students s
        INNER JOIN groups g ON s.group_id = g.id
        WHERE s.id = ?
    ");
    $stmt->execute([$student_id]);
    $student = $stmt->fetch();
    
    // Получение списка предметов для курса экзамена
    $course_year = $exam['course_year'];
    $specialization_id = $exam['specialization_id'];
    
    $stmt = $pdo->prepare("
        SELECT id, name, course_year
        FROM subjects
        WHERE specialization_id = ? AND course_year = ? AND assessment_type = 'exam'
        ORDER BY name
    ");
    $stmt->execute([$specialization_id, $course_year]);
    $subjects = $stmt->fetchAll(PDO::FETCH_ASSOC);
    
    // Обработка формы
    if ($_SERVER['REQUEST_METHOD'] === 'POST') {
        $subject_id = (int)($_POST['subject_id'] ?? 0);
        $exam_date = $_POST['exam_date'] ?? '';
        $grade = (int)($_POST['grade'] ?? 0);
        
        // Валидация
        if (empty($subject_id) || empty($exam_date) || empty($grade)) {
            $error = "Заполните все обязательные поля.";
        } elseif ($grade < 2 || $grade > 5) {
            $error = "Оценка должна быть от 2 до 5.";
        } else {
            // Обновление данных
            $stmt = $pdo->prepare("
                UPDATE exams 
                SET subject_id = ?, exam_date = ?, grade = ?
                WHERE id = ?
            ");
            $stmt->execute([$subject_id, $exam_date, $grade, $id]);
            
            header('Location: student_exams.php?student_id=' . $student_id . '&success=Результат экзамена обновлен');
            exit;
        }
        
        // Обновить данные для отображения в форме
        $exam = [
            'subject_id' => $subject_id,
            'exam_date' => $exam_date,
            'grade' => $grade,
            'course_year' => $course_year,
            'specialization_id' => $specialization_id
        ];
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
    <title>Редактировать результат экзамена</title>
    <link rel="stylesheet" href="style.css">
</head>
<body>
    <div class="container">
        <h1>Редактировать результат экзамена</h1>
        
        <?php if ($error !== null): ?>
            <div class="alert alert-error">
                <?= htmlspecialchars($error) ?>
            </div>
        <?php endif; ?>
        
        <?php if ($exam): ?>
            <form method="POST" class="form">
                <div class="form-group">
                    <label for="subject_id">Дисциплина *</label>
                    <select id="subject_id" name="subject_id" required>
                        <option value="">Выберите дисциплину</option>
                        <?php foreach ($subjects as $subject): ?>
                            <option value="<?= $subject['id'] ?>" 
                                    <?= ($exam['subject_id'] == $subject['id']) ? 'selected' : '' ?>>
                                <?= htmlspecialchars($subject['name']) ?>
                            </option>
                        <?php endforeach; ?>
                    </select>
                </div>
                
                <div class="form-group">
                    <label for="exam_date">Дата экзамена *</label>
                    <input type="date" id="exam_date" name="exam_date" required 
                           value="<?= htmlspecialchars($exam['exam_date']) ?>">
                </div>
                
                <div class="form-group">
                    <label for="grade">Оценка *</label>
                    <select id="grade" name="grade" required>
                        <option value="">Выберите оценку</option>
                        <option value="5" <?= ($exam['grade'] == 5) ? 'selected' : '' ?>>5 (Отлично)</option>
                        <option value="4" <?= ($exam['grade'] == 4) ? 'selected' : '' ?>>4 (Хорошо)</option>
                        <option value="3" <?= ($exam['grade'] == 3) ? 'selected' : '' ?>>3 (Удовлетворительно)</option>
                        <option value="2" <?= ($exam['grade'] == 2) ? 'selected' : '' ?>>2 (Неудовлетворительно)</option>
                    </select>
                </div>
                
                <div class="form-actions">
                    <button type="submit" class="btn btn-primary">Сохранить</button>
                    <a href="student_exams.php?student_id=<?= $student_id ?>" class="btn btn-secondary">Отмена</a>
                </div>
            </form>
        <?php endif; ?>
    </div>
</body>
</html>

