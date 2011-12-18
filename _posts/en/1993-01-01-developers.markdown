---
title: Developers info
layout: default
categories: en
---
# Developer info

This page is being reconstructed from memory, sorry for the mess

## Setting up for automated testing

* Install Redmine 1.2.1
* Install Backlogs and checkout the master branch
* Symlink your backlogs install into the redmine/vendor/plugins directory
* Remove the redmine/features directory and symlink redmine/vendor/plugins/redmine_backlogs/features/ to redmine/features
* run 'script/generate cucumber --spork' from the redmine directory
* Change to the redmine directory and execute 'rake db:migrate; rake db:migrate_plugins; rake redmine:backlogs:rcov'
* run 'cp lib/labels.yaml.default lib/labels.yaml' if the file 'lib/labels.yaml' doesn't exist

doing this will probably blow your database to bits, so *don't do this
anywhere near production*. You have been warned.

You will need the following gems:

* rubygems 1.3.7 
* mysql
* rack 1.0.1
* rails 2.3.11
* rmagick
* i18n 0.4.2
* icalendar
* prawn
* holidays
* rspec 1.3.1
* cucumber 0.8.5
* spork
* database_cleaner
* capybara 0.4.1.2
* ZenTest
* autotest-rails
* redgreen
* rcov
* rspec-rails 1.3.3
* cucumber-rails 0.3.2
* open-uri-cached
* timecop

Unfortunately, cucumber-rails pulls in gherkin 2.3.5 which conflicts with the gherkin 2.1.5 we really want (which is already installed as a dependency), so you'll want to explicitly uninstall gherkin 2.3.5
