---
title: Usage&#58; Product Owner
layout: default
categories: en
---
# Usage: Product Owner

As the product owner you are responsible for prioritizing and describing the stories in the product backlog. Read more about <a href="http://www.mountaingoatsoftware.com/scrum/product-owner" target="_blank">the product owner role</a> from Mountain Goat Software.

## Maintaining the product backlog

After logging in to your project, click on the "Backlogs" menu tab. This will take you to the _Master Backlog_ where you will see the current and future sprints on your left (don't touch those), and the product backlog on the right (do touch that). 

![The Master Backlog](../../assets/images/master_backlog.png)

You can quickly change priorities by dragging the stories in the product backlog, or add a new story by clicking (surprise!) the "New story" link. Clicking on a story allows you to change the title, but please don't change the story points without talking to your team, or better yet, leave that to your team entirely.

By clicking the number in the green square you will be taken the full story details, where you can add more details to it.

## How is my project doing?

Attending the standup is the easiest way to get a feel for your project, but if you're not available at some point or you want to share the project progress with the rest of the world, you can find the burndown on the context menu of the active sprint.

![Burndown Chart](../../assets/images/sprint_context_menu.png)

To see how a longer running project is performing, there is an additional method
called release planning. This is completely optional and most useful for
projects that have a specific date where a certain amount of features has to be
completed - a planned release. The timespan of one release is usually divided
into several sprints.

The idea is to get a burndown graph for a longer timespan than just a sprint - a
planned release. For example you have to track a project for a customer that
expects a released version in 6 months. You initially fill your backlog with the
requirements of the customer and give each of them story points - vague at
the beginning, but just to have a rough estimation of how complex the item is.
Then you can start to plan a release: go to the "Releases" tab, click on "New
release", and enter some clever name like "Version 1.0". For the start date you
choose the day where the work on the release begins (which might be the first
day of the initial sprint), and for the end date the day when the release is
planned to be ready for delivery - probably some sprints later.
You will also have to enter a number as total story points, which shall estimate
the total effort for all the features of that release. Backlogs will
automatically suggest the sum of all backlog entries, but you can also change
this when creating the release, or even modify it later.

Then you will see a burndown graph that looks just like a sprint burndown graph,
with a line going down from the initial total story points at the release start
date to 0 at the end date. To keep track of the release project, you will have
to create points on the graph that show the current status of the project. This
currently has to be done manually by pressing the "Update story point snapshot
for today" button below the graph.

Of course this only makes sense after some time in the project has passed, and
the sum of story points remaining in the backlog has changed (hopefully it got
less!). It's usually enough to create one point after each sprint, so making
this a part of your retrospective or planning is a good idea.
The graph will start to be useful after some sprints have passed, and you have
some points within the release burndown graph. It should help you to see how you
project is evolving, and if the release goal can be reached.

## Closing the sprint

You can accept the sprint stories by closing them, and then make sure you record your review/retro notes in the wiki. The backlogs pane and the issues list will have convenience links that will bring you to a wiki page linked to your sprint; it will be created if it doesn't yet exist. If you want to bring some structure into this, your system administrator can designate one of your wiki pages to be the template page. If you have this set up, a copy of that page will be used to initialize a sprint wiki page, but only if it didn't exist when you requested it. Later changes to the template won't affect existing pages.

## How am I doing?

If you click the _Back to Project Page_ and then click the _Home_ link at the top-left of the page, you'll see a tab called _Scrum Statistics_. Here you will find information on your projects, and how they're doing, scrum-wise. Only projects that have the Backlogs module enabled (and that aren't archived) will show up here.
