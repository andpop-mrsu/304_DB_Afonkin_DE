#!/usr/bin/env python3
"""
ETL утилита для создания SQLite базы данных db_init.db
Генерирует SQL-скрипт db_init.sql для автоматического создания таблиц и загрузки данных
"""

import csv
import os
import re
import sys
from datetime import datetime


def escape_sql_string(value):
    """Экранирует строку для SQL"""
    if value is None:
        return 'NULL'
    return "'" + str(value).replace("'", "''") + "'"


def extract_year_from_title(title):
    """Извлекает год из названия фильма"""
    match = re.search(r'\((\d{4})\)', title)
    return match.group(1) if match else None


def read_csv_file(filepath, delimiter=','):
    """Читает CSV файл и возвращает данные"""
    data = []
    try:
        with open(filepath, 'r', encoding='utf-8') as file:
            reader = csv.DictReader(file, delimiter=delimiter)
            for row in reader:
                data.append(row)
    except Exception as e:
        print(f"Ошибка при чтении файла {filepath}: {e}")
        sys.exit(1)
    return data


def read_users_file(filepath):
    """Читает файл users.txt с разделителем |"""
    users = []
    try:
        with open(filepath, 'r', encoding='utf-8') as file:
            for line in file:
                line = line.strip()
                if line:
                    parts = line.split('|')
                    if len(parts) >= 6:
                        user = {
                            'id': parts[0],
                            'name': parts[1],
                            'email': parts[2],
                            'gender': parts[3],
                            'register_date': parts[4],
                            'occupation': parts[5]
                        }
                        users.append(user)
    except Exception as e:
        print(f"Ошибка при чтении файла {filepath}: {e}")
        sys.exit(1)
    return users


def generate_sql_script():
    """Генерирует SQL-скрипт для создания базы данных"""
    
    # Проверяем наличие файлов данных
    data_files = {
        'movies': 'movies.csv',
        'ratings': 'ratings.csv', 
        'tags': 'tags.csv',
        'users': 'users.txt'
    }
    
    for table_name, filename in data_files.items():
        if not os.path.exists(filename):
            print(f"Ошибка: файл {filename} не найден")
            sys.exit(1)
    
    sql_lines = []
    
    # Добавляем заголовок
    sql_lines.append("-- SQL script for creating db_init.db database")
    sql_lines.append(f"-- Generated: {datetime.now().strftime('%Y-%m-%d %H:%M:%S')}")
    sql_lines.append("")
    
    # Удаляем существующие таблицы
    sql_lines.append("-- Drop existing tables")
    sql_lines.append("DROP TABLE IF EXISTS tags;")
    sql_lines.append("DROP TABLE IF EXISTS ratings;")
    sql_lines.append("DROP TABLE IF EXISTS movies;")
    sql_lines.append("DROP TABLE IF EXISTS users;")
    sql_lines.append("")
    
    # Создание таблиц
    sql_lines.append("-- Create tables")
    
    # Таблица users
    sql_lines.append("CREATE TABLE users (")
    sql_lines.append("    id INTEGER PRIMARY KEY,")
    sql_lines.append("    name TEXT NOT NULL,")
    sql_lines.append("    email TEXT NOT NULL,")
    sql_lines.append("    gender TEXT NOT NULL,")
    sql_lines.append("    register_date DATE NOT NULL,")
    sql_lines.append("    occupation TEXT NOT NULL")
    sql_lines.append(");")
    sql_lines.append("")
    
    # Таблица movies
    sql_lines.append("CREATE TABLE movies (")
    sql_lines.append("    id INTEGER PRIMARY KEY,")
    sql_lines.append("    title TEXT NOT NULL,")
    sql_lines.append("    year INTEGER,")
    sql_lines.append("    genres TEXT NOT NULL")
    sql_lines.append(");")
    sql_lines.append("")
    
    # Таблица ratings
    sql_lines.append("CREATE TABLE ratings (")
    sql_lines.append("    id INTEGER PRIMARY KEY AUTOINCREMENT,")
    sql_lines.append("    user_id INTEGER NOT NULL,")
    sql_lines.append("    movie_id INTEGER NOT NULL,")
    sql_lines.append("    rating REAL NOT NULL,")
    sql_lines.append("    timestamp INTEGER NOT NULL,")
    sql_lines.append("    FOREIGN KEY (user_id) REFERENCES users (id),")
    sql_lines.append("    FOREIGN KEY (movie_id) REFERENCES movies (id)")
    sql_lines.append(");")
    sql_lines.append("")
    
    # Таблица tags
    sql_lines.append("CREATE TABLE tags (")
    sql_lines.append("    id INTEGER PRIMARY KEY AUTOINCREMENT,")
    sql_lines.append("    user_id INTEGER NOT NULL,")
    sql_lines.append("    movie_id INTEGER NOT NULL,")
    sql_lines.append("    tag TEXT NOT NULL,")
    sql_lines.append("    timestamp INTEGER NOT NULL,")
    sql_lines.append("    FOREIGN KEY (user_id) REFERENCES users (id),")
    sql_lines.append("    FOREIGN KEY (movie_id) REFERENCES movies (id)")
    sql_lines.append(");")
    sql_lines.append("")
    
    # Загрузка данных
    sql_lines.append("-- Load data")
    
    # Загрузка пользователей
    print("Обработка пользователей...")
    users = read_users_file('users.txt')[:100]  # Берем только первых 100 пользователей
    sql_lines.append("-- Users")
    for user in users:
        sql_lines.append(f"INSERT INTO users (id, name, email, gender, register_date, occupation) VALUES (")
        sql_lines.append(f"    {user['id']},")
        sql_lines.append(f"    {escape_sql_string(user['name'])},")
        sql_lines.append(f"    {escape_sql_string(user['email'])},")
        sql_lines.append(f"    {escape_sql_string(user['gender'])},")
        sql_lines.append(f"    {escape_sql_string(user['register_date'])},")
        sql_lines.append(f"    {escape_sql_string(user['occupation'])})")
        sql_lines.append(";")
    sql_lines.append("")
    
    # Загрузка фильмов
    print("Обработка фильмов...")
    movies = read_csv_file('movies.csv')[:500]  # Берем только первых 500 фильмов
    sql_lines.append("-- Movies")
    for movie in movies:
        year = extract_year_from_title(movie['title'])
        sql_lines.append(f"INSERT INTO movies (id, title, year, genres) VALUES (")
        sql_lines.append(f"    {movie['movieId']},")
        sql_lines.append(f"    {escape_sql_string(movie['title'])},")
        sql_lines.append(f"    {year if year else 'NULL'},")
        sql_lines.append(f"    {escape_sql_string(movie['genres'])})")
        sql_lines.append(";")
    sql_lines.append("")
    
    # Загрузка рейтингов
    print("Обработка рейтингов...")
    ratings = read_csv_file('ratings.csv')[:1000]  # Берем только первых 1000 рейтингов
    sql_lines.append("-- Ratings")
    for rating in ratings:
        sql_lines.append(f"INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (")
        sql_lines.append(f"    {rating['userId']},")
        sql_lines.append(f"    {rating['movieId']},")
        sql_lines.append(f"    {rating['rating']},")
        sql_lines.append(f"    {rating['timestamp']})")
        sql_lines.append(";")
    sql_lines.append("")
    
    # Загрузка тегов
    print("Обработка тегов...")
    tags = read_csv_file('tags.csv')[:500]  # Берем только первых 500 тегов
    sql_lines.append("-- Tags")
    for tag in tags:
        sql_lines.append(f"INSERT INTO tags (user_id, movie_id, tag, timestamp) VALUES (")
        sql_lines.append(f"    {tag['userId']},")
        sql_lines.append(f"    {tag['movieId']},")
        sql_lines.append(f"    {escape_sql_string(tag['tag'])},")
        sql_lines.append(f"    {tag['timestamp']})")
        sql_lines.append(";")
    sql_lines.append("")
    
    # Добавляем индексы для оптимизации
    sql_lines.append("-- Create indexes for optimization")
    sql_lines.append("CREATE INDEX idx_ratings_user_id ON ratings(user_id);")
    sql_lines.append("CREATE INDEX idx_ratings_movie_id ON ratings(movie_id);")
    sql_lines.append("CREATE INDEX idx_tags_user_id ON tags(user_id);")
    sql_lines.append("CREATE INDEX idx_tags_movie_id ON tags(movie_id);")
    sql_lines.append("CREATE INDEX idx_movies_year ON movies(year);")
    sql_lines.append("")
    
    sql_lines.append("-- Script completed")
    
    return '\n'.join(sql_lines)


def main():
    """Основная функция"""
    print("ETL утилита для создания базы данных db_init.db")
    print("Генерация SQL-скрипта...")
    
    try:
        sql_script = generate_sql_script()
        
        # Записываем SQL-скрипт в файл
        with open('db_init.sql', 'w', encoding='utf-8') as f:
            f.write(sql_script)
        
        print("SQL-скрипт db_init.sql успешно создан")
        
        # Выводим статистику
        lines = sql_script.split('\n')
        insert_count = len([line for line in lines if line.strip().startswith('INSERT INTO')])
        print(f"Сгенерировано {insert_count} INSERT-запросов")
        
    except Exception as e:
        print(f"Ошибка при генерации SQL-скрипта: {e}")
        sys.exit(1)


if __name__ == "__main__":
    main()
