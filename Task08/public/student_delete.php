<?php
/**
 * Удаление студента
 */

require_once __DIR__ . '/../config.php';

$error = null;
$student = null;
$id = (int)($_GET['id'] ?? 0);

if (!$id) {
    header('Location: index.php');
    exit;
}

try {
    $pdo = getDB();
    
    // Получение данных студента
    $stmt = $pdo->prepare("
        SELECT s.*, g.group_number 
        FROM students s
        INNER JOIN groups g ON s.group_id = g.id
        WHERE s.id = ?
    ");
    $stmt->execute([$id]);
    $student = $stmt->fetch();
    
    if (!$student) {
        header('Location: index.php?error=Студент не найден');
        exit;
    }
    
    // Обработка подтверждения удаления
    if ($_SERVER['REQUEST_METHOD'] === 'POST' && isset($_POST['confirm'])) {
        $stmt = $pdo->prepare("DELETE FROM students WHERE id = ?");
        $stmt->execute([$id]);
        
        header('Location: index.php?success=Студент успешно удален');
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
    <title>Удалить студента</title>
    <link rel="stylesheet" href="style.css">
</head>
<body>
    <div class="container">
        <h1>Удалить студента</h1>
        
        <?php if ($error !== null): ?>
            <div class="alert alert-error">
                <?= htmlspecialchars($error) ?>
            </div>
        <?php endif; ?>
        
        <?php if ($student): ?>
            <div class="alert alert-warning">
                Вы уверены, что хотите удалить студента?
            </div>
            
            <div class="student-info">
                <p><strong>ФИО:</strong> 
                    <?= htmlspecialchars($student['last_name'] . ' ' . $student['first_name'] . ' ' . ($student['middle_name'] ?? '')) ?>
                </p>
                <p><strong>Группа:</strong> <?= htmlspecialchars($student['group_number']) ?></p>
                <p><strong>Дата рождения:</strong> <?= htmlspecialchars($student['birth_date']) ?></p>
            </div>
            
            <form method="POST" class="form">
                <div class="form-actions">
                    <button type="submit" name="confirm" value="1" class="btn btn-delete">Да, удалить</button>
                    <a href="index.php" class="btn btn-secondary">Отмена</a>
                </div>
            </form>
        <?php endif; ?>
    </div>
</body>
</html>

