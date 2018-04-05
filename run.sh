#!/bin/sh

echo "[i] Starting daemon..."
# run apache httpd daemon
httpd -D FOREGROUND

cd /app

git clone https://github.com/ruut12/HTM.git

cd HTM/drupal

composer require drupal/config_installer

composer update

drush si config-installer --db-url='pgsql://drupaluser:drupalpassword@db/drupaldb' --account-name=admin --account-pass=tarkmees
