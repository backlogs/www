---
title: How to set up redmine+backlogs
name: Installation
layout: default
category: navigation
---
## Introduction

This document is about how to setup up Redmine+Backlogs

## Installation

Set up [Redmine trunk](http://github.com/edavis10/redmine) per the
[Redmine installation instructions](http://www.redmine.org/wiki/redmine/HowTos)

Install the [Redmine Backlogs](http://github.com/relaxdiego/redmine_backlogs) plugin in 
the vendor/plugins directory of your Redmine installation

Make sure that you have installed the following gems on your
system:

-   rails (v.2.3.5, no other)
-   activeresource
-   holidays
-   rubyist-aasm
-   prawn
-   icalendar

Migrate everything:

-   rake generate_session_store
-   rake config/initializers/session_store.rb
-   rake db:migrate
-   rake db:migrate:upgrade_plugin_migrations
-   rake db:migrate_plugins
-   rake tmp:cache:clear
-   rake tmp:sessions:clear

## Configuration

Log in and browse to _Administration_, _Plugins_, _Redmine Scrum Plugin_ / _Configure_.
Select the trackers that will be your story types, and the tracker
that will be your task type. Only one task tracker can be selected,
and it can't also be one of your story trackers; the _Apply_ button
will be disabled if you do this. You can also choose whether your
charts will burn up or down.

If you like physical task boards (and you do, right?), you can select
one of 250 preconfigured label types that are commercially available.
Your product/sprint backlog will print neatly onto these.

You can keep your sprint retrospective or review notes on the wiki,
backlogs provides a link for you. If you want to have some template
text on this page you can fill in the page that will be used as a
template, which will be copied onto the sprint wiki page if that page
does not already exist. Note that this template page must be created
per-project.

When you create a new project, make sure you enable the backlogs
module for that project, and that at least some of the project members
have a role that has the _Manage Backlogs_ permission.

## Charts

You may schedule a cron job to run the rake task named
redmine:backlogs_plugin:generate_chart_data. I recommend you run it a
few minutes before midnight to ensure that your backlogs have data
everyday even when no user views the charts.
