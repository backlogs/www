---
title: Installation
layout: default
categories: en
---
# Installation

Alrighty! Let's install Backlogs into your system. Now, remember, if you come across any hitches or just don't know how to proceed, don't hesitate to [ask for help](http://forum.redminebacklogs.net). 
For you poor souls who are stuck on RHEL 5.x,  there's a separate set of [installation instructions](/en/installation-redhat), but we recommend that you read this installation manual first.

## Install Redmine

The Backlogs plugin requires Redmine 1.0.0 (Any 1.x.x version might also work although we have not tested it yet. Anything lower than 1.0.0 is not supported) to be installed before it can run. For more information on Redmine and how to install it, please visit [the official Redmine website](http://www.redmine.org/).


## Check Those Gems!

Backlogs requires a few gems to run properly. Make sure the following gems (and their dependencies) are installed on your system:

> *NOTE*: Dreamhost users, please [see this page](/en/installation-dreamhost) for additional instructions.

* Rails 2.3.5
* activeresource
* holidays
* i18n
* icalendar
* prawn


## Install Backlogs

Now let's download the Backlogs source code from [the official repo](git://github.com/relaxdiego/redmine_backlogs.git) into the `vendor/plugins` directory of your Redmine installation. The code is hosted in Github and you have two ways get it. The first method is what we recommend since it allows you to update to the latest version easily and even try out experimental features. Unfortunately, it requires that you have git installed. If you don't feel like messing around with git right now, go ahead and skip to the second method.


### Method #1
> **NOTE**: This first method requires some knowledge of git. For more information on how to use it, please visit [the git homepage](http://git-scm.com/).

First, make sure that you're inside the `vendor/plugins` directory of your Redmine instance. Now, clone the source from Github by executing the following command:

    git clone git://github.com/relaxdiego/redmine_backlogs.git

This will create a directory named `redmine_backlogs` which is exactly what we need. 

> **IMPORTANT:** Don't rename the `redmine_backlogs` directory!

Now you need to select the version you want to use. First, go inside the `redmine_backlogs` directory by executing the following:

    cd redmine_backlogs

Then, take a look at the available versions that have been tagged in the repo:

    git tag

This will display the versions in **alphabetical order**. Choose the latest version (recommended), or whichever you prefer by running the following command:

    git checkout vX.Y.Z

> **NOTE:** Replace 'X.Y.Z' with the version of your choice.

That's it for Method #1. If you want to try out some of the experimental features, feel free to poke around by checking out the master branch or any other available branches. See the section titled _Optional: Getting the latest code_ below for information on how to do that.


### Method #2

This second method involves going to [the project's page in Github](http://github.com/relaxdiego/redmine_backlogs) and downloading the source archive. To download the archive, click the *Download* button found near the top right corner:

![Download Source](../../assets/images/download_button.png)

This will display a page where you can download the available versions tagged in the repo. Download the version of your choice by clicking either the tgz or zip link. For Windows users, it's usually zip. After this, go ahead and extract the contents of the downloaded archive into the `vendor/plugins` directory of your Redmine instance. Also, make sure that the extracted directory is named exactly as `redmine_backlogs`.

## Pre-install Tasks

**IMPORTANT:** Before you continue, keep in mind that most rake tasks run on the development environment when you don't specify a value for RAILS_ENV. If you want to ensure that the rake tasks run on the production environment, run the following in the terminal:

    RAILS_ENV=production
    export RAILS_ENV

Up next, we need to ensure that your Redmine instance is set-up correctly. So make sure to execute the following rake commands from the command line while in your Redmine installation's top directory:

    rake generate_session_store
    rake config/initializers/session_store.rb
    rake db:migrate
    rake db:migrate:upgrade_plugin_migrations

For more information on the above rake tasks, execute `rake -T` from within your Redmine installation. You may also want to run the following rake tasks.

> **WARNING:** Be careful when running the following rake tasks in a production environment as it might produce unwanted results.

    rake tmp:cache:clear
    rake tmp:sessions:clear

## Configure Backlogs

Now that Backlogs has been downloaded, let's go ahead and tell it how to behave. To do that, go to your terminal again and do the following:

    cd path/to/redmine
    rake redmine:backlogs:install

This will download some needed files, help you set up your story and
task trackers, run the plugin's database migrations, and, if you're
nice enough, maybe even make breakfast for you!

> **About story and task trackers:** These settings tell Backlogs what type of issues it should consider as stories and tasks respectively. You may select more than one story tracker but only one task tracker. Some of us like to use Bug, Feature, and Support as story trackers and Task as the task tracker. Others prefer to make it simple by creating a Story tracker and a Task tracker. It's really up to you.

Once you're done with the installer, restart Redmine to proceed to the next step.

## Additional Configuration

This step is not required at this point, but it helps to know there is this page for redoing the configuration. Access your Redmine instance using your preferred browser, log in as an administrator and head on to _Administration_ > _Plugins_. Then click the _Configure_ link to the right of the Redmine Backlogs Plugin record. You should then see a screen similar to the one below:

![Configure Screen](../../assets/images/configure_screen.png)

> NOTE: Redmine ships with just the Feature, Bug, and Support tracker. To add custom trackers such as Task and Impediment in the above screen, go to _Administration > Trackers_ in Redmine.

A quick description of the fields:

* _Story Trackers_ and _Task Tracker_ - These fields tell Backlogs what type of issues it should consider as stories and tasks respectively. You may select more than one story tracker but only one task tracker. Make sure that you don't use the same tracker in both fields! If you do this, the _Apply_ button will automatically be disabled.
* _Points burn up/down_ - Tells Backlogs how to display the sprint progress chart. Some of us like it to go up, others like it to go down. Choose which one you prefer.
* _Label types for card printing_ - If you like physical task boards (and you do, right?), you can select one of 250 preconfigured label types that are commercially available. Your product/sprint backlog will print neatly onto these.
* _Template for sprint wiki page_ - Backlogs helps you keep your sprint retrospectives or review notes on a wiki. If you want to have some template text on this page you can fill in the page that will be used as a template, which will be copied onto the sprint wiki page if that page does not already exist. Note that this template page must be created per-project.

Once you're done, go ahead and click _Apply_. If that button is disabled, it means you're using a task tracker that's also a story tracker. Fix the error so you can proceed.

## Set Permissions

Now let's tell Redmine which project roles have permission to use the plugin. To do that, go to _Administration_ > _Roles and permissions_ > _Permissions report_. This should lead you to a page that looks like something below:

![Permissions Report](../../assets/images/permissions_report.png)

Check or uncheck any of the permissions under the Backlogs section for any of the roles in your system. 

## Enable Backlogs in Your Projects

Now that Redmine and Backlogs are properly configured, all that's left is to enable the plugin in each of the projects you want to use it in. To do that, login to your Redmine instance, choose a project then click on its _Settings_ tab. Once in the settings page, click the _Modules_ tab and then check _Backlogs_.

![Project Settings](../../assets/images/project_settings.png)

Afterwards, click _Save_ and you should see the _Backlogs_ tab appear in your project's menu. Do the same thing for each project in which you want to use Backlogs.

## Charts

OK, so we lied. There's one other thing you need to do. To ensure that each day of your project has a corresponding data point in the charts generated by the Backlogs plugin, schedule a cron job to run the following command **inside of your Redmine instance's root directory**:

    rake redmine:backlogs:generate_chart_data

We recommend that you make this cron job run at least once a day.

## Optional: Getting the latest code

If you want to grab the latest & greatest from the repo, here's what you do:

    cd path/to/backlogs
    git checkout master
    git pull origin
    rake redmine:backlogs:install

> **NOTE:** Obviously, you can only do this if you used _Method #1_ in the installation process above.

> **WARNING:** The master is constantly in flux and might be broken at times. Make sure to do the above in your test or staging environment first before pulling the code into production! We try to make sure new versions don't break existing data, but we don't have enough resources to test all possible scenarios.

> **ANOTHER WARNING:** If you decide to checkout any of the topic branches (topic branches are prefixed by the dev's name. example: relaxdiego-super-crazy-idea), keep in mind that these are very early stage work and may break the build at times. Topic branches are unsupported and we don't recommend you pull from them unless you know what you're doing.

## Optional: Upgrading with git

We release new versions of the product often. To grab the latest version in the repo, here's what you do:

    cd path/to/backlogs
    git fetch --tags origin
    git tag

The last line above will show you a list of available versions. To upgrade to one of the versions, do the following:
   
    git checkout vX.Y.Z
    rake redmine:backlogs:install

> **NOTE:** Replace vX.Y.Z with the correct tag.

> **WARNING:** Make sure to do the above in your test or staging environment first before pulling the code into production! We try to make sure new versions don't break existing data, but we don't have enough resources to test all possible scenarios.
