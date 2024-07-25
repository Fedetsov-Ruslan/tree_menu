#!/bin/sh

# Применение миграций
echo "Applying migrations..."
python manage.py makemigrations
python manage.py migrate

# Запуск пользовательской команды
echo "Running custom management command..."
python manage.py create_test_menu

# Запуск сервера
echo "Starting server..."
exec "$@"