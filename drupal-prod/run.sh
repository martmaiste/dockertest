#!/bin/sh

git clone  https://github.com/lsoonvald/HTM.git /app

chown apache.apache -R /app/web/site/defalt/files

echo "[i] Starting daemon..."
httpd -D FOREGROUND
