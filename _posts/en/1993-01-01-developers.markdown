---
title: Developers info
layout: default
categories: en
---
# Developer info

This page is being reconstructed from memory, sorry for the mess

## Setting up for automated testing

* Install Redmine 1.1.2
* Install Backlogs and checkout the master branch
* Symlink your backlogs install into the redmine/vendor/plugins directory
* Remove the redmine/features directory and symlink redmine/vendor/plugins/redmine_backlogs/features/ to redmine/features
* Change to the redmine directory and execute 'rake db:migrate; rake * db:migrate_plugins; rake redmine:backlogs:rcov'

doing this will probably blow your database to bits, so *don't do this
anywhere near production*. You have been warned.
