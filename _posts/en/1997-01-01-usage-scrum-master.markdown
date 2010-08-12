---
title: Usage&#58; Scrum Master
layout: default
categories: en
---
# Usage: Scrum Master

As the Scrum Master, you are responsible for ensuring that the team lives by the values and practices of Scrum. Read more about <a href="http://www.mountaingoatsoftware.com/scrum/scrummaster" target="_blank">the scrum master role</a> from Mountain Goat Software.

## Planning a sprint

Redmine doesn't have a built-in construct for sprints and Backlogs doesn't either. For now, you create a new sprint by creating a new version (We're not big fans of this either, but we haven't really found a solution that we liked. We'll keep you posted). Go to your project, click _Settings_ > _Versions_ and create a new version.

After creating your sprints, click the _Backlogs_ tab to go to the _Master Backlog_. Here, you will see the _Product Backlog_ to the right and the sprint backlogs to the left. On this page you can change various things by clicking on them and pressing _Enter_ to confirm (or _Esc_ to cancel):

* Edit the sprint's name and dates
* Edit a story's tracker, title, status, and story points

The total story points (aka sprint velocity) will be tallied automatically for each sprint as you change them on the stories, or when adding or removing stories. You can move stories by dragging them within or between lists. This means that you also have the ability to re-prioritize the stories, but that's really something you should leave to your product owner.

![Sprint Backlog](../../assets/images/sprint_backlog.png)

When you're done planning the sprint, you might want to pick the "printable cards" option from the sprint drop-down menu. If you happen to use Adobe Acrobat Reader, make sure you turn off the scaling options in the print dialog. You can use these cards for your cork board (if you're using one, that is).

![Printable Cards](../../assets/images/sprint_context_menu.png)

## The daily scrum

You can use the task board to register time-remaining on issues, and drag-and-drop tasks to their current state. It's low impact -- try having someone (not you! you need to be at the standup!) follow the standup as it progresses.

To enter impediments
you'll have to go the the standard "New Issue" tab and enter a new
issue that will represent your impediment. Make sure to relate this
impediment to the tasks (or stories) it touches by adding a "blocks"
relationship to them.

The backlogs screen and the isseus list have links to your burndown.
The product owner will apreciate a direct link to the burn down.

## Closing the sprint

Have the Product Owner accept the sprint stories by closing them, and
then make sure you record your review/retro notes in the wiki. The
backlogs pane and the issues list will have convenience links that
will bring you to a wiki page linked to your sprint; it will be
created if it doesn't yet exist. If you want to bring some structure
into this, your system administrator can designate one of your wiki
pages to be the template page; if you have this set up, a copy of that
page will be used to initialize a sprint wiki page, but only if it
didn't exist when you requested it. Later changes to the template
won't affect existing pages.

## How am I doing?

If you click the "Home" link at the top-right of the page, you'll see
a tab called "Scrum Statistics". Here you will find information on
your projects, and how they're doing, scrum-wise. Only projects that
have the Backlogs module enabled (and that aren't archived) will show
up here.

## Maintain the project velocity

Velocity is calculated over the last 5 _closed_ sprints. If you don't close your sprints, you get no velocity. At the end of the sprint, each story that has a "closed" status will be deemed _accepted_ by Backlogs. Note that Backlogs depends on your Redmine settings  to determine which status are considered closed. By default "Rejected" and "Closed" are considered "closed" but check with your own installation's settings. 

To prevent Backlogs from mistakenly considering your rejected/failed stories as part of the accepted ones, you have a few options:

* Don't tell Redmine that rejected, failed, or any other status is "closed," or
* Just outright delete a rejected or failed story, or
* Reset the rejected/failed story's points to zero.