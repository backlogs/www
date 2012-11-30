---
title: Developers info
layout: default
categories: en
---
# Developer info

## Setting up for automated testing

* create a directory dedicated to redmine development. I have 'redmine' in my home directory, but it can be anything. The rest of the description assumes ~/redmine
* Clone [backlogs from github](https://github.com/backlogs/redmine_backlogs) into ~/redmine/redmine\_backlogs checkout the master branch
* Create a file named ~/.backlogs.rc (this file *must* be in your home dir), with the content:
    DBROOTPW=password # your MySQL root user password
    REDMINE_VER=2.0.4 # or 2.1.2, or v3.3.0, or...
    WORKSPACE=/home/user/redmine # CHANGE THIS TO REFLECT THE *ABSOLUTE* DIRECTORY OF THE DIRECTORY IN STEP 1
    PATH_TO_REDMINE=$WORKSPACE/redmine
    PATH_TO_BACKLOGS=$WORKSPACE/redmine_backlogs
    CLEARDB=yes # set to no if you don't want the installer to clear your database during test run
    VERBOSE=yes # give verbose output. Recommended
* Set up [rvm](https://rvm.io/), install ruby 1.9.3 in it, and create a gemset by the name 'redmine'. Execute 'rvm use 1.9.3@redmine'
* Go to the directory you cloned backlogs into, and execute
    ./redmine_install.sh -r # this fetches redmine
    ./redmine_install.sh -i # this sets up backlogs
    ./redmine_install.sh -t # this runs the tests
  after this, you can simply run the last step whenever you want to execute the tests.

Doing this *will blow your database to bits*, so *DON'T DO THIS ANYWHERE NEAR PRODUCTION*. You have been warned.
