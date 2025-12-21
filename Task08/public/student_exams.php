<?php
/**
 * Результаты экзаменов студента
 */

require_once __DIR__ . '/../config.php';

$error = null;
$success = null;
$student = null;
$exams = [];
$student_id = (int)($_GET['student_id'] ?? 0);

// Обработка сообщений из GET параметров
if (isset($_GET['success'])) {
    $success = $_GET['success'];
}
if (isset($_GET['error'])) {
    $error = $_GET['error'];
}

if (!$student_id) {
    header('Location: index.php');
    exit;
}

try {
    $pdo = getDB();
    
    // Получение данных студента
    $stmt = $pdo->prepare("
        SELECT s.*, g.group_number, g.specialization_id, sp.name AS specialization_name
        FROM students s
        INNER JOIN groups g ON s.group_id = g.id
        INNER JOIN specializations sp ON g.specialization_id = sp.id
        WHERE s.id = ?
    ");
    $stmt->execute([$student_id]);
    $student = $stmt->fetch();
    
    if (!$student) {
        header('Location: index.php?error=Студент не найден');
        exit;
    }
    
    $specialization_id = $student['specialization_id'];
    
    // Получение результатов экзаменов студента
    $stmt = $pdo->prepare("
        SELECT 
            e.id,
            e.exam_date,
            e.grade,
            sub.name AS subject_name,
            sub.course_year,
            sub.assessment_type
        FROM exams e
        INNER JOIN subjects sub ON e.subject_id = sub.id
        WHERE e.student_id = ?
        ORDER BY e.exam_date DESC
    ");
    $stmt->execute([$student_id]);
    $exams = $stmt->fetchAll(PDO::FETCH_ASSOC);
    
} catch (PDOException $e) {
    $error = "Ошибка базы данных: " . $e->getMessage();
}
?>
<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Результаты экзаменов</title>
    <link rel="stylesheet" href="style.css">
</head>
<body>
    <div class="container">
        <h1>Результаты экзаменов</h1>
        
        <?php if ($error !== null): ?>
            <div class="alert alert-error">
                <?= htmlspecialchars($error) ?>
            </div>
        <?php endif; ?>
        
        <?php if ($success !== null): ?>
            <div class="alert alert-success">
                <?= htmlspecialchars($success) ?>
            </div>
        <?php endif; ?>
        
        <?php if ($student): ?>
            <div class="student-info">
                <h2>
                    <?= htmlspecialchars($student['last_name'] . ' ' . $student['first_name'] . ' ' . ($student['middle_name'] ?? '')) ?>
                </h2>
                <p><strong>Группа:</strong> <?= htmlspecialchars($student['group_number']) ?></p>
            </div>
        <?php endif; ?>
        
        <div class="actions-top">
            <a href="exam_add.php?student_id=<?= $student_id ?>" class="btn btn-primary">Добавить результат экзамена</a>
            <a href="index.php" class="btn btn-secondary">Вернуться к списку студентов</a>
        </div>
        
        <?php if (!empty($exams)): ?>
            <div class="table-container">
                <table>
                    <thead>
                        <tr>
                            <th>Дата экзамена</th>
                            <th>Дисциплина</th>
                            <th>Курс</th>
                            <th>Оценка</th>
                            <th>Действия</th>
                        </tr>
                    </thead>
                    <tbody>
                        <?php foreach ($exams as $exam): ?>
                            <tr>
                                <td><?= htmlspecialchars($exam['exam_date']) ?></td>
                                <td><?= htmlspecialchars($exam['subject_name']) ?></td>
                                <td><?= $exam['course_year'] ?> курс</td>
                                <td class="grade grade-<?= $exam['grade'] ?>"><?= $exam['grade'] ?></td>
                                <td class="actions">
                                    <a href="exam_edit.php?id=<?= $exam['id'] ?>&student_id=<?= $student_id ?>" class="btn btn-edit">Редактировать</a>
                                    <a href="exam_delete.php?id=<?= $exam['id'] ?>&student_id=<?= $student_id ?>" class="btn btn-delete">Удалить</a>
                                </td>
                            </tr>
                        <?php endforeach; ?>
                    </tbody>
                </table>
            </div>
        <?php else: ?>
            <div class="no-data">
                Результаты экзаменов не найдены.
            </div>
        <?php endif; ?>
    </div>
</body>
</html>

