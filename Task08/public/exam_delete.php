<?php
/**
 * Удаление результата экзамена
 */

require_once __DIR__ . '/../config.php';

$error = null;
$exam = null;
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
        SELECT e.*, sub.name AS subject_name, s.last_name, s.first_name, s.middle_name
        FROM exams e
        INNER JOIN subjects sub ON e.subject_id = sub.id
        INNER JOIN students s ON e.student_id = s.id
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
    
    // Обработка подтверждения удаления
    if ($_SERVER['REQUEST_METHOD'] === 'POST' && isset($_POST['confirm'])) {
        $stmt = $pdo->prepare("DELETE FROM exams WHERE id = ?");
        $stmt->execute([$id]);
        
        header('Location: student_exams.php?student_id=' . $student_id . '&success=Результат экзамена успешно удален');
        exit;
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
    <title>Удалить результат экзамена</title>
    <link rel="stylesheet" href="style.css">
</head>
<body>
    <div class="container">
        <h1>Удалить результат экзамена</h1>
        
        <?php if ($error !== null): ?>
            <div class="alert alert-error">
                <?= htmlspecialchars($error) ?>
            </div>
        <?php endif; ?>
        
        <?php if ($exam): ?>
            <div class="alert alert-warning">
                Вы уверены, что хотите удалить результат экзамена?
            </div>
            
            <div class="exam-info">
                <p><strong>Студент:</strong> 
                    <?= htmlspecialchars($exam['last_name'] . ' ' . $exam['first_name'] . ' ' . ($exam['middle_name'] ?? '')) ?>
                </p>
                <p><strong>Дисциплина:</strong> <?= htmlspecialchars($exam['subject_name']) ?></p>
                <p><strong>Дата экзамена:</strong> <?= htmlspecialchars($exam['exam_date']) ?></p>
                <p><strong>Оценка:</strong> <?= $exam['grade'] ?></p>
            </div>
            
            <form method="POST" class="form">
                <div class="form-actions">
                    <button type="submit" name="confirm" value="1" class="btn btn-delete">Да, удалить</button>
                    <a href="student_exams.php?student_id=<?= $student_id ?>" class="btn btn-secondary">Отмена</a>
                </div>
            </form>
        <?php endif; ?>
    </div>
</body>
</html>

