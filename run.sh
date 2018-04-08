#!/bin/sh

#if grep -Fvxq db /app/drupal/web/sites/default/settings.php; then
#  drush --root=/app/drupal -y si config-installer --db-url='pgsql://drupaluser:drupalpassword@db/drupaldb' --account-name=admin --account-pass=tarkmees
#fi

echo "[i] Starting daemon..."
httpd -D FOREGROUND
