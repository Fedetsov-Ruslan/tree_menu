# Tree_menu_builder
Django приложения для создания древовидных меню

## Задание 

https://docs.google.com/document/d/1XTnbcXhejyGB-I2cHRiiSZqI3ElHzqDJeetwHkJbTa8/edit

## Используемые тезнологии в проекте
Языки:
- Python
- Js

Framework
- Django

База данных 
- Postgesql

CI/CD:
- Github
- Docker Hub
- Docker-compsoe
- Nginx

## Установка и запуск
  
    Удаленный запуск через docker-compose:

- Создать файл .env и из .env.example перенести значения.
- Запустить удаленный сервер docker-compose up -d. Миграции и установка тестовых занчений меню произойдет автоматически
- создать superuser командой: docker-compose run --rm web python manage.py createsuperuser, ввести необходимые значения
- Меню находится по адресу: http://localhost:8000/
- Вход в Админку по адресу : http://localhost:8000/admin/
- Затем ввести логин и пароль superuser который вводили 3 пунктами выше

    
    Локальный запуск

- В requirements.txt изменить psycopg2-binary==2.9.9 на psycopg2==2.9.9
- Установить локальное окружение и зависимости из requriments.txt
- Создать файл .env и из .env.example перенести значения и изменить DB_HOST=postgres на DB_HOST=localhost
- Создать базу данных с параметрами из .env
- провести миграции python manage.py migrate
- создать тестовые значения командой python manage.py create_test_menu
- создать superuser командой: python manage.py createsuperuser, ввести необходимые значения
- Запустить сервер python manage.py runserver
- Меню находится по адресу: http://localhost:8000/
- Вход в Админку по адресу : http://localhost:8000/admin/
- Затем ввести логин и пароль superuser который вводили 3 пунктами выше

