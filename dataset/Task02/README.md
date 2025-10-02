# ETL Process for Movies Rating Database

## Описание

Этот проект реализует ETL (Extract, Transform, Load) процесс для переноса данных о фильмах, рейтингах, тегах и пользователях в SQLite базу данных `db_init.db`.

## Требования к окружению

Для корректной работы скрипта `db_init.bat` на компьютере должны быть установлены:

### Обязательные компоненты:

1. **Python 3.x**
   - Версия: Python 3.6 или выше
   - Должен быть доступен в PATH как `python3` или `python`
   - Рекомендуемая версия: Python 3.8+

2. **SQLite3**
   - Обычно входит в состав Python
   - Должен быть доступен в PATH как `sqlite3`
   - Минимальная версия: SQLite 3.0+

### Проверка установки:

```bash
# Проверка Python
python3 --version
# или
python --version

# Проверка SQLite
sqlite3 --version
```

### Операционные системы:
- **Windows**: PowerShell или Command Prompt
- **Linux**: Bash shell
- **macOS**: Terminal

## Структура проекта

- `make_db_init.py` - Python утилита для генерации SQL-скрипта
- `db_init.bat` - shell-скрипт для Windows
- `db_init.sh` - shell-скрипт для Linux/macOS
- `db_init.sql` - сгенерированный SQL-скрипт (создается автоматически)
- `db_init.db` - SQLite база данных (создается автоматически)
- Исходные данные: `movies.csv`, `ratings.csv`, `tags.csv`, `users.txt`, `genres.txt`, `occupation.txt`

## Исходные данные

- `movies.csv` - информация о фильмах (id, title, genres)
- `ratings.csv` - рейтинги пользователей (user_id, movie_id, rating, timestamp)
- `tags.csv` - теги фильмов (user_id, movie_id, tag, timestamp)
- `users.txt` - информация о пользователях (id, name, email, gender, register_date, occupation)

## Структура базы данных

### Таблица `users`
- `id` (INTEGER PRIMARY KEY) - идентификатор пользователя
- `name` (TEXT NOT NULL) - имя пользователя
- `email` (TEXT NOT NULL) - email
- `gender` (TEXT NOT NULL) - пол
- `register_date` (DATE NOT NULL) - дата регистрации
- `occupation` (TEXT NOT NULL) - профессия

### Таблица `movies`
- `id` (INTEGER PRIMARY KEY) - идентификатор фильма
- `title` (TEXT NOT NULL) - название фильма
- `year` (INTEGER) - год выпуска (извлекается из названия)
- `genres` (TEXT NOT NULL) - жанры через |

### Таблица `ratings`
- `id` (INTEGER PRIMARY KEY AUTOINCREMENT) - идентификатор рейтинга
- `user_id` (INTEGER NOT NULL) - идентификатор пользователя
- `movie_id` (INTEGER NOT NULL) - идентификатор фильма
- `rating` (REAL NOT NULL) - оценка
- `timestamp` (INTEGER NOT NULL) - временная метка

### Таблица `tags`
- `id` (INTEGER PRIMARY KEY AUTOINCREMENT) - идентификатор тега
- `user_id` (INTEGER NOT NULL) - идентификатор пользователя
- `movie_id` (INTEGER NOT NULL) - идентификатор фильма
- `tag` (TEXT NOT NULL) - тег
- `timestamp` (INTEGER NOT NULL) - временная метка

## Использование

После выполнения скрипта `db_init.bat` или `db_init.sh` будет создана заполненная база данных `db_init.db`.

### Автоматический запуск (рекомендуется)

**Windows:**
```cmd
db_init.bat
```

**Linux/macOS:**
```bash
./db_init.sh
```

### Ручной запуск

1. Генерация SQL-скрипта:
```bash
python3 make_db_init.py
```

2. Создание базы данных:
```bash
# Windows PowerShell
Get-Content db_init.sql | sqlite3 db_init.db

# Linux/macOS
sqlite3 db_init.db < db_init.sql
```

## Результат выполнения

После успешного выполнения скрипта будет создана база данных `db_init.db` со следующими данными:
- **users**: 100 записей
- **movies**: 500 записей  
- **ratings**: 1000 записей
- **tags**: 500 записей

Размер базы данных: ~845KB

## Особенности

- **Кроссплатформенность**: работает на Windows, Linux, macOS
- **Автоматическое извлечение года**: год выпуска извлекается из названия фильма
- **Правильное экранирование**: SQL-строки корректно экранируются
- **Оптимизация**: создаются индексы для ускорения запросов
- **Безопасность**: существующие таблицы удаляются перед созданием новых
- **Обработка ошибок**: проверка наличия исходных файлов и корректности данных

## Требования

- Python 3.x
- sqlite3 (обычно входит в состав Python)
- Исходные файлы данных в каталоге `dataset/`
