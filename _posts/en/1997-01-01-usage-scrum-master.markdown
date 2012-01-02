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

When you're done planning the sprint, you might want to pick the "printable cards" option from the sprint drop-down menu. You can use these cards for your cork board (if you're using one, that is). A basic card layout is included with Backlogs; if you want it just-so, you can design your own cards!

I would suggest you leave the default cards in lib (story-default.glabels and task-default.glabels) as-is; you can create your own story.glabels and/or task.glabels and Backlogs will pick them up instead of the default cards. That way, you can always easily get back to a working situation should you happen to mess up your fancy design.

The cards can be edited using <a href="http://www.glabels.org/" target="_blank">gLabels</a>. For best fidelity you will want to create your card using the label stock (gLabels calls it a template) matching the one you will use in Backlogs, but Backlogs will scale the design up or down to match the cards if you happen to pick something else.

In the card design you can use lines, boxes, and text blocks; for each of these, line width and color is supported, and for text blocks you can set font size, weight (bold or not, and italics. The font you choose will be ignored, and ellipses and barcodes are currently not supported. If you add one or more images, each of them will be replaced with the task/story owners' gravatar picture. Gravatars must be square, so the scaling that may be applied could distort the image; in this case, the smaller of the scaled height/width will be used for the gravatar size.

In the card you can include text, which will be copied verbatim, or variables using the ${varname} syntax, which will be filled during rendering. You can use the following variables:

*Story cards*

* id: the story id
* subject: the story subject
* description: the story description, or the story subject if no description was filled out
* category: the story category, if any
* size: the size of the story in points
* position: relative position of the story, within a sprint or within the product backlog (whichever is relevant)
* path: a full "path" (Story -> Prio) to the story
* owner: the name of the person the story is assigned to (if any)
* sprint.name: name of the sprint the story belongs to, or 'Product backlog' if it is not part of a sprint
* owner.email: email address of the story.owner (if any)

*Task cards*

* story.position: relative position of the parent story, within a sprint or within the product backlog (whichever is relevant)
* story.id: the id of the parent story
* story.subject: the subject of the parent story
* id: the task id
* subject: the task subject
* description: the task description, or the task subject if no description was filled out
* category: the task category, if any
* hours.estimated: the hours estimated initially for this task
* hours.remaining: the hours remaining at time of rendering
* position: relative position of the task among the tasks belonging to the same parent story
* path: a full "path" (Story -> Task -> Task) to the task
* sprint.name: the sprint the task belongs to
* owner: the name of the person the task is assigned to (if any)
* owner.email: email address of the task.owner (if any)


![Printable Cards](../../assets/images/sprint_context_menu.png)

> **NOTE:** If you happen to use Adobe Acrobat Reader, make sure you turn off the scaling options in the print dialog.

![Acrobat printer settings](../../assets/images/printer_settings.png)

## The daily scrum

The taskboard provides a number of functionalities you can use during daily scrums:

* If your team prefers to record the **time remaining** on each task, click on a task and input the remaining time accordingly. After you click _OK_, the value automatically displays as a red badge on the task.
* You can track **sprint impediments** by adding them at the top row marked _Sprint Impediments_.
* *Drag and drop* a task between columns to change its state.
* Edit any attribute of the task by clicking the task and modifying any of the fields.
* Show the **burndown chart** by clicking on the _Burndown_ link at the top of the page.

The burndown chart offers the following data series:

* *points committed*: points the team has committed to deliver in the sprint.
* *remaining hours*: remaining hours on the sprint.
* *points accepted*: points accepted by the product owner. See <a href="usage-scrum-master.html#storystates">here</a> for more information on story states.
* *points resolved*: points resolved by the team. A story counts as resolved when it is accepted by the product owner, or if it's not closed and its remaining hours are 0.
* *points not resolved*: the difference between *points committed* and *points resolved*.
* *points not accepted*: the difference between *points committed* and *points accepted*.
* *ideal*: the number of hours that should be remaining if the planned hours were burned down evenly each day.
* *required burn rate (points)*: required number of points to resolve per day for the rest of the sprint.
* *required burn rate (hours)*: required number of hours to burn down per day for the rest of the sprint.

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
