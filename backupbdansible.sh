#!/bin/bash

BACKUPBD_DIR="/backups/db"
DATE=$(date +'%Y%m%d')
PGUSER=wikiuser
DB=my_wiki
export PGPASSWORD="balamut666"


mkdir -p "$BACKUPBD_DIR"

find "$BACKUPBD_DIR" -type f -mtime +2 -delete

pg_dump -h {{ hostvars['psql2'].ansible_host }} -p 5432 -U "$PGUSER" -d "$DB" -F c -b -v -f | gzip > "$BACKUPBD_DIR/pgsql_$DATE.sql.gz"

if [ $? -eq 0 ]; then
    echo "Резервное копирование BD завершено."
else
    echo "Ошибка при резервном копировании BD."
    exit 1
fi

unset PGPASSWORD
