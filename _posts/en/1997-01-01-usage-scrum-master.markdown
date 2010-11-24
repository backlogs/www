---
title: Usage&#58; Scrum Master
layout: default
categories: en
---
# Usage: Scrum Master

As the Scrum Master, you are responsible for ensuring that the team lives by the values and practices of Scrum. Read more about <a href="http://www.mountaingoatsoftware.com/scrum/scrummaster" target="_blank">the scrum master role</a> from Mountain Goat Software.

## Planning a sprint

Redmine has versions but no sprints and Backlogs just reuses the
versions construct for sprints. We're not big fans of this set-up, but
we haven't really found a solution that we liked yet. So, for now, to
define new sprints, go to your project, click _Settings_ > _Versions_
and create a new version. The date you enter here will be the sprint
end date; the sprint start date must be entered from the main
_Backlogs_ tab. Click on the sprint header to edit its name, start-
and end dates.

### Elaborate on stories

After creating your sprints, click the _Backlogs_ tab to go to the _Master Backlog_. Here, you will see the _Product Backlog_ to the right and the sprint backlogs to the left. On this page you can change various things by clicking on them and pressing _Enter_ to confirm (or _Esc_ to cancel):

* Edit the sprint's name and dates
* Edit a story's tracker, title, status, and story points

The total story points (aka sprint velocity) will be tallied automatically for each sprint as you change them on the stories, or when adding or removing stories. You can move stories by dragging them within or between lists. This means that you also have the ability to re-prioritize the stories, but that's really something you should leave to your product owner.

![Sprint Backlog](../../assets/images/sprint_backlog.png)

### Enumerating tasks

To help you and your team estimate the points for each story, you might want to list the tasks using the sprint's taskboard. To view a sprint's taskboard, click _Taskboard_ in the sprint's menu.

![Sprint Taskboard](../../assets/images/sprint_taskboard.png)

To add tasks, just click on the "+" button to the right of a story.

### Printing out cards

When you're done planning the sprint, you might want to pick the "printable cards" option from the sprint drop-down menu. You can use these cards for your cork board (if you're using one, that is).

![Printable Cards](../../assets/images/sprint_context_menu.png)

> **NOTE:** If you happen to use Adobe Acrobat Reader, make sure you turn off the scaling options in the print dialog.

## The daily scrum

The taskboard provides a number of functionalities you can use during daily scrums:

* If your team prefers to record the **time remaining** on each task, click on a task and input the remaining time accordingly. After you click _OK_, the value automatically displays as a red badge on the task.
* You can track **sprint impediments** by adding them at the top row marked _Sprint Impediments_.
* *Drag and drop* a task between columns to change its state.
* Edit any attribute of the task by clicking the task and modifying any of the fields.
* Show the **burndown chart** by clicking on the _Burndown_ link at the top of the page.

> **NOTE:** Task colors are determined by the assignee's preferred color. This preference is randomly assigned by Backlogs if a user doesn't have a color yet. To modify your preferred color, go to your account page in Redmine.


## Closing the sprint

To close a sprint, ensure that all stories are closed. Then, go to your project's _Settings_ tab and close the sprint in question.

> **TIP:** You may record your review/retro notes in the wiki. The backlogs pane and the issues list will have convenience links that will bring you to a wiki page linked to your sprint; it will be created if it doesn't yet exist. If you want to bring some structure into this, your system administrator can designate one of your wiki pages to be the template page; if you have this set up, a copy of that page will be used to initialize a sprint wiki page, but only if it didn't exist when you requested it. Later changes to the template won't affect existing pages.


## How are we doing?

If you click the _Back to Project Page_ and then click the _Home_ link at the top-left of the page, you'll see a tab called _Scrum Statistics_. Here you will find information on your projects, and how they're doing, scrum-wise. Only projects that have the Backlogs module enabled (and that aren't archived) will show up here.

## Maintain the project velocity

Velocity is calculated over the last 5 _closed_ sprints. If you don't close your sprints, you get no velocity. At the end of the sprint, each story that has a "closed" status will be deemed _accepted_ by Backlogs. Note that Backlogs depends on your Redmine settings  to determine which status are considered closed. By default "Rejected" and "Closed" are considered "closed" but check with your own installation's settings. 

To prevent Backlogs from mistakenly considering your rejected/failed stories as part of the accepted ones, you have a few options:

* Don't tell Redmine that rejected, failed, or any other status is "closed," or
* Just outright delete a rejected or failed story, or
* Reset the rejected/failed story's points to zero.
