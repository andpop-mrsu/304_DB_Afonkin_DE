<?php
/**
 * Редактирование студента
 */

require_once __DIR__ . '/../config.php';

$error = null;
$student = null;
$groups = [];
$id = (int)($_GET['id'] ?? 0);

if (!$id) {
    header('Location: index.php');
    exit;
}

try {
    $pdo = getDB();
    
    // Получение данных студента
    $stmt = $pdo->prepare("SELECT * FROM students WHERE id = ?");
    $stmt->execute([$id]);
    $student = $stmt->fetch();
    
    if (!$student) {
        header('Location: index.php?error=Студент не найден');
        exit;
    }
    
    // Получение списка групп
    $stmt = $pdo->query("SELECT id, group_number FROM groups ORDER BY group_number");
    $groups = $stmt->fetchAll(PDO::FETCH_ASSOC);
    
    // Обработка формы
    if ($_SERVER['REQUEST_METHOD'] === 'POST') {
        $first_name = trim($_POST['first_name'] ?? '');
        $last_name = trim($_POST['last_name'] ?? '');
        $middle_name = trim($_POST['middle_name'] ?? '');
        $gender = $_POST['gender'] ?? '';
        $birth_date = $_POST['birth_date'] ?? '';
        $group_id = (int)($_POST['group_id'] ?? 0);
        
        // Валидация
        if (empty($first_name) || empty($last_name) || empty($birth_date) || empty($group_id)) {
            $error = "Заполните все обязательные поля.";
        } elseif (!in_array($gender, ['male', 'female'])) {
            $error = "Неверное значение пола.";
        } else {
            // Проверка существования группы
            $stmt = $pdo->prepare("SELECT id FROM groups WHERE id = ?");
            $stmt->execute([$group_id]);
            if (!$stmt->fetch()) {
                $error = "Выбранная группа не существует.";
            } else {
                // Обновление данных
                $stmt = $pdo->prepare("
                    UPDATE students 
                    SET first_name = ?, last_name = ?, middle_name = ?, 
                        gender = ?, birth_date = ?, group_id = ?
                    WHERE id = ?
                ");
                $stmt->execute([
                    $first_name,
                    $last_name,
                    $middle_name ?: null,
                    $gender,
                    $birth_date,
                    $group_id,
                    $id
                ]);
                
                header('Location: index.php?success=Данные студента обновлены');
                exit;
            }
        }
        
        // Обновить данные для отображения в форме
        $student = [
            'first_name' => $first_name,
            'last_name' => $last_name,
            'middle_name' => $middle_name,
            'gender' => $gender,
            'birth_date' => $birth_date,
            'group_id' => $group_id
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
    <title>Редактировать студента</title>
    <link rel="stylesheet" href="style.css">
</head>
<body>
    <div class="container">
        <h1>Редактировать студента</h1>
        
        <?php if ($error !== null): ?>
            <div class="alert alert-error">
                <?= htmlspecialchars($error) ?>
            </div>
        <?php endif; ?>
        
        <?php if ($student): ?>
            <form method="POST" class="form">
                <div class="form-group">
                    <label for="last_name">Фамилия *</label>
                    <input type="text" id="last_name" name="last_name" required 
                           value="<?= htmlspecialchars($student['last_name']) ?>">
                </div>
                
                <div class="form-group">
                    <label for="first_name">Имя *</label>
                    <input type="text" id="first_name" name="first_name" required 
                           value="<?= htmlspecialchars($student['first_name']) ?>">
                </div>
                
                <div class="form-group">
                    <label for="middle_name">Отчество</label>
                    <input type="text" id="middle_name" name="middle_name" 
                           value="<?= htmlspecialchars($student['middle_name'] ?? '') ?>">
                </div>
                
                <div class="form-group">
                    <label>Пол *</label>
                    <div class="radio-group">
                        <label class="radio-label">
                            <input type="radio" name="gender" value="male" required 
                                   <?= ($student['gender'] === 'male') ? 'checked' : '' ?>>
                            Мужской
                        </label>
                        <label class="radio-label">
                            <input type="radio" name="gender" value="female" required 
                                   <?= ($student['gender'] === 'female') ? 'checked' : '' ?>>
                            Женский
                        </label>
                    </div>
                </div>
                
                <div class="form-group">
                    <label for="birth_date">Дата рождения *</label>
                    <input type="date" id="birth_date" name="birth_date" required 
                           value="<?= htmlspecialchars($student['birth_date']) ?>">
                </div>
                
                <div class="form-group">
                    <label for="group_id">Номер группы *</label>
                    <select id="group_id" name="group_id" required>
                        <option value="">Выберите группу</option>
                        <?php foreach ($groups as $group): ?>
                            <option value="<?= $group['id'] ?>" 
                                    <?= ($student['group_id'] == $group['id']) ? 'selected' : '' ?>>
                                <?= htmlspecialchars($group['group_number']) ?>
                            </option>
                        <?php endforeach; ?>
                    </select>
                </div>
                
                <div class="form-actions">
                    <button type="submit" class="btn btn-primary">Сохранить</button>
                    <a href="index.php" class="btn btn-secondary">Отмена</a>
                </div>
            </form>
        <?php endif; ?>
    </div>
</body>
</html>

