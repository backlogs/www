---
title: Developers info
layout: default
categories: en
---
# Developer info

## Setting up for automated testing

* create a directory dedicated to redmine development. I have 'redmine' in my home directory, but it can be anything. The rest of the description assumes ~/redmine
* Clone [backlogs from github](https://github.com/backlogs/redmine_backlogs) into ~/redmine/redmine\_backlogs checkout the master branch
* Create a file named ~/.backlogs.rc (this file *must* be in your home dir), with the content shown below
* Set up [rvm](https://rvm.io/), install ruby 1.9.3 in it, and create a gemset by the name 'redmine'. Execute 'rvm use 1.9.3@redmine'
* Go to the directory you cloned backlogs into, and execute
    ./redmine_install.sh -r # this fetches redmine
    ./redmine_install.sh -i # this sets up backlogs
    ./redmine_install.sh -t # this runs the tests
  after this, you can simply run the last step whenever you want to execute the tests. 
* For a single test, just pass in the feature name
    ./redmine_install.sh -t burndown  # for features/burndown.feature

Doing this *will blow your database to bits*, so *DON'T DO THIS ANYWHERE NEAR PRODUCTION*. You have been warned.

Content of ~/.backlogs.rc

    DBROOTPW=password # your MySQL root user password
    REDMINE_VER=2.2.4 # or 2.3.0, or v3.3.0, or...
    WORKSPACE=/home/user/redmine # CHANGE THIS TO REFLECT THE *ABSOLUTE* DIRECTORY OF THE DIRECTORY IN STEP 1
    PATH_TO_REDMINE=$WORKSPACE/redmine
    PATH_TO_BACKLOGS=$WORKSPACE/redmine_backlogs
    CLEARDB=yes # set to no if you don't want the installer to clear your database during test run
    VERBOSE=yes # give verbose output. Recommended

## Changing supported Redmine versions

The versions of redmine that are supported are derived from the tests we run on Travis. In order to change the supported versions:

* Edit .travis.yml and add/change the supported version in the 'env:' section
* Edit redmine\_install.sh and add/change the supported versions in the same way in the section starting with "case $REDMINE\_VER in"

## Tagging a new version

* Update the changelog. The script ./lib/tasks/changelog.rb will trawl the checkin logs for hints, but will always need touch-up
* Run the ./lib/tasks/tag.rb script. This will do some consistency checks, modify a few files to reflect the new version, and will *check in* those files, so tagging is best done on a repo that has no pending changes. This script expects the backlogs website to be checked out in ../www, as it will modify and check in the site to reflect the new version.

