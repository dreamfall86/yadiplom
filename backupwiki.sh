#!/bin/bash

MEDIAWIKI_DIR="/var/www/mediawiki" 
BACKUPS_DIR="/backups/mediawiki" 
DATE=$(date +'%Y%m%d')
ARCHIVE_NAME="mediawiki_backup_$DATE.tar.gz"

mkdir -p "$BACKUPS_DIR"

find "$BACKUPS_DIR" -type f -mtime +2 -delete

echo "Резервное копирование файлов MediaWiki..."
tar -czf "$BACKUPS_DIR/$ARCHIVE_NAME" -C "$MEDIAWIKI_DIR" .

if [ $? -eq 0 ]; then
    echo "Резервное копирование файлов завершено."
else
    echo "Ошибка при резервном копировании файлов."
    exit 1
fi
