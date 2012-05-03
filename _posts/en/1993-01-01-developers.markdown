---
title: Developers info
layout: default
categories: en
---
# Developer info

## Setting up for automated testing

* create a directory 'redmine' in your home directory
* Clone [backlogs from github](https://github.com/backlogs/redmine_backlogs) into ~/redmine/redmine\_backlogs checkout the master branch
* Set up [rvm](https://rvm.io/), install ruby 1.8.7 in it, and create gemsets by the name 'redmine' and/or 'chiliproject' (depending on what you wish to target). 'rvm use' the desired gemset with 1.8.7
* Run './rbl-reinstall -r -i -d -R ROOTPW -P USERPW | bash'. This will install all the required gems, install redmine or chiliproject (depending on what gemset you chose) into ~/redmine/[chiliproject|redmine]. It will also *drop and re-create* the appropriate database (again, 'redmine' or 'chiliproject') *without warning* using ROOTPW (the MySQL root password) and create a MySQL user 'redmine' with password USERPW.

Doing this *will blow your database to bits*, so *DON'T DO THIS ANYWHERE NEAR PRODUCTION*. You have been warned.
