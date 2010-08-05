---
title: Filtering Issues
name: "Slicing and dicing Backlogs Issues (stories and tasks)"
layout: default
---
Backlogs adds a few extras to the standard Redmine Issues tab

## Selecting stories and/or tasks

Backlogs adds a new filter to the issues tab called "Backlog type".
This filter allows you to select specifically your stories, tasks,
both, or any (which is the same as selecting '+' and then selecting
Story and Task).

It is important to note that this filters not on tracker, but on the
role these issues play in Backlogs. If you have a tracker named Story,
but you don't have it configured to be a "Story-type" tracker in the
plugin configuration, this filter will not pick it up. Likewise, an
issue that has the "Task-type" tracker will only be picked up if it
has a "Story-type" parent.

If you want to select stories and their tasks, pick "Stories and
tasks", add the "Parent" column to the view, and sort on that column.
This will list stories, and their tasks grouped beneath them.
