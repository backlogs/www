---
title: You are the Scrum Master
name: "Usage: Scrum Master"
layout: default
---
You are the Scrum Master for a team that has chosen to use
Redmine/Backlogs.

## Maintain the project velocity

Sorry, can't do it. Psych! Backlogs will _do it for you_, but you'll
have to follow a few rules.

Velocity is calculated over the last 5 _closed_ sprints. If you don't
close your sprints, you get no velocity. At the end of the sprint,
each story that has an issue status that Redmine considers closed will
be deemed _accepted_ by the product owner. Make sure you don't give a
status like "failed" the 'closed' status. At the end of the sprint,
just keep the stories open, or delete them, or move them to the
backlog, but don't "close" them.

## Planning a sprint

Sprints are what Redmine calls versions, so you create a new sprint by
creating a new... version, right. Go to your project, select the
"settings" tab, pick "versions" and create one.

If you click the "Backlogs" tab for your project you'll get to the
planning page. On this page you can change various things by clicking
on them and pressing enter to confirm (or esc to cancel):

- The sprint header allows you to edit the sprint name, and sprint start and end dates
- Clicking the a story allows you to edit the story title, its status,
  and the story points

The story points will be tallied automatically for each sprint as you
change them on the stories, or when adding or removing stories. You
can move stories by drag-and-dropping them between sprints and the
product backlog. Drag and drop also works within a list and changes
the story priority -- really something you should leave to your
Product Owner.

When you're done planning the sprint, you might want to pick the
"printable cards" option from the sprint drop-down menu. If you happen
to use Adobe Acrobat Reader, make sure you turn off the scaling
options in the print dialog. You can use these cards for your cork
board (you _are_ using a cork board or equivalent, right?)

## The daily scrum

You can use the task board to register time-remaining on issues, and
drag-and-drop tasks to their current state. It's low impact -- try
having someone (not you! you need to be at the standup!) follow the
standup as it progresses.

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
