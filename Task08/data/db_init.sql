-- Database initialization script for students and exams management system
-- SQLite database

PRAGMA foreign_keys = ON;

-- Drop existing tables if they exist
DROP TABLE IF EXISTS exam_results;
DROP TABLE IF EXISTS exams;
DROP TABLE IF EXISTS subjects;
DROP TABLE IF EXISTS students;
DROP TABLE IF EXISTS groups;
DROP TABLE IF EXISTS specializations;

-- Create specializations table (направления подготовки)
CREATE TABLE specializations (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    name TEXT NOT NULL UNIQUE
);

-- Create groups table (группы)
CREATE TABLE groups (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    group_number TEXT NOT NULL UNIQUE,
    specialization_id INTEGER NOT NULL,
    FOREIGN KEY (specialization_id) REFERENCES specializations(id)
);

-- Create students table (студенты)
CREATE TABLE students (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    first_name TEXT NOT NULL,
    last_name TEXT NOT NULL,
    middle_name TEXT,
    gender TEXT NOT NULL CHECK(gender IN ('male', 'female')),
    birth_date TEXT NOT NULL,
    group_id INTEGER NOT NULL,
    FOREIGN KEY (group_id) REFERENCES groups(id)
);

-- Create subjects table (дисциплины)
CREATE TABLE subjects (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    name TEXT NOT NULL,
    specialization_id INTEGER NOT NULL,
    course_year INTEGER NOT NULL CHECK(course_year >= 1 AND course_year <= 6),
    hours INTEGER NOT NULL,
    assessment_type TEXT NOT NULL CHECK(assessment_type IN ('exam', 'credit')),
    FOREIGN KEY (specialization_id) REFERENCES specializations(id),
    UNIQUE(name, specialization_id, course_year)
);

-- Create exams table (экзамены)
CREATE TABLE exams (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    student_id INTEGER NOT NULL,
    subject_id INTEGER NOT NULL,
    exam_date TEXT NOT NULL,
    grade INTEGER NOT NULL CHECK(grade >= 2 AND grade <= 5),
    FOREIGN KEY (student_id) REFERENCES students(id) ON DELETE CASCADE,
    FOREIGN KEY (subject_id) REFERENCES subjects(id)
);

-- Insert test data
BEGIN;

-- Insert specializations
INSERT INTO specializations (name) VALUES 
    ('Прикладная математика и информатика'),
    ('Математика и компьютерные науки'),
    ('Информатика и вычислительная техника'),
    ('Программная инженерия');

-- Insert groups
INSERT INTO groups (group_number, specialization_id) VALUES 
    ('303', 1),
    ('304', 1),
    ('403', 1),
    ('404', 1),
    ('503', 2),
    ('504', 2);

-- Insert students
-- Students in group 303
INSERT INTO students (first_name, last_name, middle_name, gender, birth_date, group_id) VALUES
    ('Иван', 'Иванов', 'Иванович', 'male', '2003-05-15', 1),
    ('Мария', 'Петрова', 'Сергеевна', 'female', '2003-08-20', 1),
    ('Александр', 'Сидоров', 'Александрович', 'male', '2003-03-10', 1),
    ('Елена', 'Козлова', 'Владимировна', 'female', '2003-11-25', 1),
    ('Дмитрий', 'Новиков', 'Дмитриевич', 'male', '2003-07-08', 1);

-- Students in group 304
INSERT INTO students (first_name, last_name, middle_name, gender, birth_date, group_id) VALUES
    ('Анна', 'Морозова', 'Андреевна', 'female', '2003-04-12', 2),
    ('Сергей', 'Волков', 'Сергеевич', 'male', '2003-09-18', 2),
    ('Ольга', 'Соколова', 'Игоревна', 'female', '2003-12-05', 2),
    ('Павел', 'Лебедев', 'Павлович', 'male', '2003-06-22', 2);

-- Students in group 403
INSERT INTO students (first_name, last_name, middle_name, gender, birth_date, group_id) VALUES
    ('Николай', 'Семенов', 'Николаевич', 'male', '2002-02-14', 3),
    ('Татьяна', 'Егорова', 'Татьяновна', 'female', '2002-10-30', 3),
    ('Андрей', 'Павлов', 'Андреевич', 'male', '2002-05-19', 3);

-- Students in group 404
INSERT INTO students (first_name, last_name, middle_name, gender, birth_date, group_id) VALUES
    ('Екатерина', 'Козлова', 'Екатериновна', 'female', '2002-08-07', 4),
    ('Игорь', 'Степанов', 'Игоревич', 'male', '2002-01-25', 4);

-- Students in group 503
INSERT INTO students (first_name, last_name, middle_name, gender, birth_date, group_id) VALUES
    ('Виктор', 'Николаев', 'Викторович', 'male', '2001-03-17', 5),
    ('Юлия', 'Орлова', 'Юрьевна', 'female', '2001-07-11', 5);

-- Students in group 504
INSERT INTO students (first_name, last_name, middle_name, gender, birth_date, group_id) VALUES
    ('Роман', 'Андреев', 'Романович', 'male', '2001-11-28', 6),
    ('Наталья', 'Макарова', 'Натальевна', 'female', '2001-04-09', 6);

-- Insert subjects for Прикладная математика и информатика
INSERT INTO subjects (name, specialization_id, course_year, hours, assessment_type) VALUES
    ('Математический анализ', 1, 1, 144, 'exam'),
    ('Алгебра и геометрия', 1, 1, 108, 'exam'),
    ('Программирование', 1, 1, 144, 'exam'),
    ('Дискретная математика', 1, 2, 108, 'exam'),
    ('Теория вероятностей', 1, 2, 72, 'exam'),
    ('Базы данных', 1, 2, 108, 'exam'),
    ('Математическая статистика', 1, 3, 72, 'exam'),
    ('Машинное обучение', 1, 3, 108, 'exam'),
    ('Математический анализ', 1, 2, 144, 'exam'),
    ('Алгебра и геометрия', 1, 2, 108, 'exam');

-- Insert subjects for Математика и компьютерные науки
INSERT INTO subjects (name, specialization_id, course_year, hours, assessment_type) VALUES
    ('Математический анализ', 2, 1, 144, 'exam'),
    ('Алгебра', 2, 1, 108, 'exam'),
    ('Программирование', 2, 1, 144, 'exam'),
    ('Дифференциальные уравнения', 2, 2, 108, 'exam'),
    ('Теория алгоритмов', 2, 2, 72, 'exam');

-- Insert some exam results
INSERT INTO exams (student_id, subject_id, exam_date, grade) VALUES
    (1, 1, '2022-01-15', 5),
    (1, 2, '2022-01-20', 4),
    (1, 3, '2022-01-25', 5),
    (2, 1, '2022-01-15', 4),
    (2, 2, '2022-01-20', 5),
    (2, 3, '2022-01-25', 4),
    (3, 1, '2022-01-15', 3),
    (3, 2, '2022-01-20', 4),
    (1, 4, '2023-01-15', 5),
    (1, 5, '2023-01-20', 5),
    (1, 6, '2023-01-25', 4);

COMMIT;

-- Create indexes for better performance
CREATE INDEX idx_students_group_id ON students(group_id);
CREATE INDEX idx_students_last_name ON students(last_name);
CREATE INDEX idx_groups_group_number ON groups(group_number);
CREATE INDEX idx_subjects_specialization ON subjects(specialization_id);
CREATE INDEX idx_exams_student_id ON exams(student_id);
CREATE INDEX idx_exams_subject_id ON exams(subject_id);
CREATE INDEX idx_exams_date ON exams(exam_date);

