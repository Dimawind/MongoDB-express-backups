#!/bin/bash

# Создаем временную метку
TIMESTAMP=$(date +"%Y%m%d_%H%M%S")

# Путь к директории с данными MongoDB
MONGO_DATA_PATH="/data/db"

# Путь к директории для сохранения бэкапов
BACKUP_PATH="/backups"

# Создаем архив с данными
tar -czf $BACKUP_PATH/backup_$TIMESTAMP.tar.gz -C $MONGO_DATA_PATH .

# Выводим сообщение о завершении
echo "Backup created at $BACKUP_PATH/backup_$TIMESTAMP.tar.gz"

