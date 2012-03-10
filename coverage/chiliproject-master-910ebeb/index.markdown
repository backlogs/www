---
title: Build failed
layout: default
---
# Build failed

    F-------F------------------------------------------------------------------------F-F---------F------F------------------------F-----F----------------------------------------------------------------------------------------------F------F------------------------------------------------------------------------------------------------------------------------------------------------------------------------------F------F----------------------------------------------------------------------------------------------------------------------------------------------------------  
      
    (::) failed steps (::)  
      
    undefined method `merge' for #<String:0xb48c080c> (NoMethodError)  
    ./features/step_definitions/_given_steps.rb:152:in `/^the (.*) project has the backlogs plugin enabled$/'  
    features/burndown.feature:7:in `Given the ecookbook project has the backlogs plugin enabled'  
      
    undefined method `merge' for #<String:0xb45e3968> (NoMethodError)  
    ./features/step_definitions/_given_steps.rb:152:in `/^the (.*) project has the backlogs plugin enabled$/'  
    features/common.feature:7:in `Given the ecookbook project has the backlogs plugin enabled'  
      
    undefined method `merge' for #<String:0xb497efc8> (NoMethodError)  
    ./features/step_definitions/_given_steps.rb:152:in `/^the (.*) project has the backlogs plugin enabled$/'  
    features/extended_timelog.feature:7:in `Given the ecookbook project has the backlogs plugin enabled'  
      
    undefined method `merge' for #<String:0xb4745270> (NoMethodError)  
    ./features/step_definitions/_given_steps.rb:152:in `/^the (.*) project has the backlogs plugin enabled$/'  
    features/product_owner.feature:7:in `Given the ecookbook project has the backlogs plugin enabled'  
      
    undefined method `merge' for #<String:0xb49479d8> (NoMethodError)  
    ./features/step_definitions/_given_steps.rb:152:in `/^the (.*) project has the backlogs plugin enabled$/'  
    features/scrum_master.feature:7:in `Given the ecookbook project has the backlogs plugin enabled'  
      
    undefined method `merge' for #<String:0xb45fa1a4> (NoMethodError)  
    ./features/step_definitions/_given_steps.rb:152:in `/^the (.*) project has the backlogs plugin enabled$/'  
    features/team_member.feature:7:in `Given the ecookbook project has the backlogs plugin enabled'  
      
    Failing Scenarios:  
    cucumber features/burndown.feature:47 # Scenario: Tasks closed AFTER remaining hours is set to 0  
    cucumber features/common.feature:10 # Scenario: View the product backlog  
    cucumber features/extended_timelog.feature:21 # Scenario: Log time and set remaining hours from "Log time"-view  
    cucumber features/product_owner.feature:27 # Scenario: View the product backlog  
    cucumber features/scrum_master.feature:30 # Scenario: Create an impediment  
    cucumber features/team_member.feature:30 # Scenario: Create a task for a story  
      
    45 scenarios (6 failed, 39 skipped)  
    533 steps (6 failed, 527 skipped)  
    0m2.653s  
