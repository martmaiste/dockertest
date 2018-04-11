#!/bin/sh

#if grep -Fvxq db /app/drupal/web/sites/default/settings.php; then
#  drush --root=/app/drupal -y si config-installer --db-url='pgsql://drupaluser:drupalpassword@db/drupaldb' --account-name=admin --account-pass=tarkmees
#fi

git clone  https://github.com/lsoonvald/HTM.git /app
#composer --working-dir=/app require drupal/config_installer
#composer --working-dir=/app update

chown apache.apache -R /app/web/site/defalt/files

echo "[i] Starting daemon..."
httpd -D FOREGROUND
