<?php
/**
 * Главная страница - список студентов
 */

require_once __DIR__ . '/../config.php';

// Инициализация переменных
$students = [];
$groups = [];
$selectedGroup = null;
$error = null;
$success = null;

// Обработка сообщений из GET параметров
if (isset($_GET['success'])) {
    $success = $_GET['success'];
}
if (isset($_GET['error'])) {
    $error = $_GET['error'];
}

try {
    // Подключение к базе данных
    $pdo = getDB();
    
    // Получение списка всех групп для фильтра
    $stmt = $pdo->query("SELECT id, group_number FROM groups ORDER BY group_number");
    $groups = $stmt->fetchAll(PDO::FETCH_ASSOC);
    
    // Обработка фильтрации
    if ($_SERVER['REQUEST_METHOD'] === 'GET' && isset($_GET['group_id'])) {
        $selectedGroup = (int)$_GET['group_id'];
    }
    
    // Построение запроса
    $query = "
        SELECT 
            s.id,
            s.first_name,
            s.last_name,
            s.middle_name,
            s.gender,
            s.birth_date,
            g.group_number,
            g.id AS group_id
        FROM students s
        INNER JOIN groups g ON s.group_id = g.id
    ";
    
    $params = [];
    
    if ($selectedGroup) {
        $query .= " WHERE s.group_id = :group_id";
        $params['group_id'] = $selectedGroup;
    }
    
    $query .= " ORDER BY g.group_number, s.last_name, s.first_name";
    
    $stmt = $pdo->prepare($query);
    $stmt->execute($params);
    $students = $stmt->fetchAll(PDO::FETCH_ASSOC);
    
} catch (PDOException $e) {
    $error = "Ошибка базы данных: " . $e->getMessage();
}
?>
<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Список студентов</title>
    <link rel="stylesheet" href="style.css">
</head>
<body>
    <div class="container">
        <h1>Список студентов</h1>
        
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
        
        <div class="filter-section">
            <form method="GET" class="filter-form">
                <label for="group_id">Фильтр по группе:</label>
                <select name="group_id" id="group_id">
                    <option value="">Все группы</option>
                    <?php foreach ($groups as $group): ?>
                        <option value="<?= $group['id'] ?>" 
                                <?= ($selectedGroup == $group['id']) ? 'selected' : '' ?>>
                            <?= htmlspecialchars($group['group_number']) ?>
                        </option>
                    <?php endforeach; ?>
                </select>
                <button type="submit">Показать</button>
                <?php if ($selectedGroup): ?>
                    <a href="index.php" class="btn btn-secondary">Сбросить фильтр</a>
                <?php endif; ?>
            </form>
        </div>
        
        <?php if (!empty($students)): ?>
            <div class="table-container">
                <table>
                    <thead>
                        <tr>
                            <th>Номер группы</th>
                            <th>Фамилия</th>
                            <th>Имя</th>
                            <th>Отчество</th>
                            <th>Пол</th>
                            <th>Дата рождения</th>
                            <th>Действия</th>
                        </tr>
                    </thead>
                    <tbody>
                        <?php foreach ($students as $student): ?>
                            <tr>
                                <td><?= htmlspecialchars($student['group_number']) ?></td>
                                <td><?= htmlspecialchars($student['last_name']) ?></td>
                                <td><?= htmlspecialchars($student['first_name']) ?></td>
                                <td><?= htmlspecialchars($student['middle_name'] ?? '') ?></td>
                                <td><?= $student['gender'] === 'male' ? 'Мужской' : 'Женский' ?></td>
                                <td><?= htmlspecialchars($student['birth_date']) ?></td>
                                <td class="actions">
                                    <a href="student_edit.php?id=<?= $student['id'] ?>" class="btn btn-edit">Редактировать</a>
                                    <a href="student_delete.php?id=<?= $student['id'] ?>" class="btn btn-delete">Удалить</a>
                                    <a href="student_exams.php?student_id=<?= $student['id'] ?>" class="btn btn-exams">Результаты экзаменов</a>
                                </td>
                            </tr>
                        <?php endforeach; ?>
                    </tbody>
                </table>
            </div>
        <?php else: ?>
            <div class="no-data">
                Студенты не найдены.
            </div>
        <?php endif; ?>
        
        <div class="actions-bottom">
            <a href="student_add.php" class="btn btn-primary">Добавить студента</a>
        </div>
    </div>
</body>
</html>

