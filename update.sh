#!/bin/sh
rm -f ~/redmine/www.redminebacklogs.net/coverage/*
cp -r ~/redmine/redmine/coverage/* ~/redmine/www.redminebacklogs.net/coverage/
cd ~/redmine/www.redminebacklogs.net
git add .
git commit -a -m "Site update"
git push
