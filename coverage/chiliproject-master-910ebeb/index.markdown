---
title: Build failed
layout: default
---
# Build failed

    ..................F-..........F.............F............F.....................F-....F--...F-..............F------.......F---............F---..............F-----......F-------......F----......F--......F--......F----......F----....................F.............F.........F---.......F-------.......F-------.......F----.......F--------.......F----..........F----.........F-..........F-............F............F...................F............F........F........F.......F--.......F--.......F---..........F..........F........................F.............F.................F-  
      
    (::) failed steps (::)  
      
    expected: "first, hours_remaining: 70",  
    got: "first, hours_remaining: 0" (using ==)  
      
    Diff:  
    @@ -1,2 +1,2 @@  
    -first, hours_remaining: 70  
    +first, hours_remaining: 0  
    (Spec::Expectations::ExpectationNotMetError)  
    ./features/step_definitions/_then_steps.rb:203  
    ./features/step_definitions/_then_steps.rb:196:in `each'  
    ./features/step_definitions/_then_steps.rb:196  
    ./features/step_definitions/_then_steps.rb:191:in `each'  
    ./features/step_definitions/_then_steps.rb:191:in `/^the sprint burn(down|up) should be:$/'  
    features/burndown.feature:62:in `Then the sprint burndown should be:'  
      
    expected: "first, hours_remaining: 70",  
    got: "first, hours_remaining: 0" (using ==)  
      
    Diff:  
    @@ -1,2 +1,2 @@  
    -first, hours_remaining: 70  
    +first, hours_remaining: 0  
    (Spec::Expectations::ExpectationNotMetError)  
    ./features/step_definitions/_then_steps.rb:203  
    ./features/step_definitions/_then_steps.rb:196:in `each'  
    ./features/step_definitions/_then_steps.rb:196  
    ./features/step_definitions/_then_steps.rb:191:in `each'  
    ./features/step_definitions/_then_steps.rb:191:in `/^the sprint burn(down|up) should be:$/'  
    features/burndown.feature:95:in `Then the sprint burndown should be:'  
      
    expected: "first, hours_remaining: 70",  
    got: "first, hours_remaining: 0" (using ==)  
      
    Diff:  
    @@ -1,2 +1,2 @@  
    -first, hours_remaining: 70  
    +first, hours_remaining: 0  
    (Spec::Expectations::ExpectationNotMetError)  
    ./features/step_definitions/_then_steps.rb:203  
    ./features/step_definitions/_then_steps.rb:196:in `each'  
    ./features/step_definitions/_then_steps.rb:196  
    ./features/step_definitions/_then_steps.rb:191:in `each'  
    ./features/step_definitions/_then_steps.rb:191:in `/^the sprint burn(down|up) should be:$/'  
    features/burndown.feature:134:in `Then the sprint burndown should be:'  
      
    expected: "first, points_resolved: 1",  
    got: "first, points_resolved: 8" (using ==)  
      
    Diff:  
    @@ -1,2 +1,2 @@  
    -first, points_resolved: 1  
    +first, points_resolved: 8  
    (Spec::Expectations::ExpectationNotMetError)  
    ./features/step_definitions/_then_steps.rb:203  
    ./features/step_definitions/_then_steps.rb:196:in `each'  
    ./features/step_definitions/_then_steps.rb:196  
    ./features/step_definitions/_then_steps.rb:191:in `each'  
    ./features/step_definitions/_then_steps.rb:191:in `/^the sprint burn(down|up) should be:$/'  
    features/burndown.feature:150:in `Then the sprint burnup should be:'  
      
    expected: "first, hours_remaining: 70",  
    got: "first, hours_remaining: 0" (using ==)  
      
    Diff:  
    @@ -1,2 +1,2 @@  
    -first, hours_remaining: 70  
    +first, hours_remaining: 0  
    (Spec::Expectations::ExpectationNotMetError)  
    ./features/step_definitions/_then_steps.rb:203  
    ./features/step_definitions/_then_steps.rb:196:in `each'  
    ./features/step_definitions/_then_steps.rb:196  
    ./features/step_definitions/_then_steps.rb:191:in `each'  
    ./features/step_definitions/_then_steps.rb:191:in `/^the sprint burn(down|up) should be:$/'  
    features/burndown.feature:179:in `Then the sprint burndown should be:'  
      
    no link with title, id or text 'Backlogs' found (Capybara::ElementNotFound)  
    ./features/step_definitions/_given_steps.rb:52:in `/^I am viewing the master backlog$/'  
    features/common.feature:11:in `Given I am viewing the master backlog'  
      
    no link with title, id or text 'Backlogs' found (Capybara::ElementNotFound)  
    ./features/step_definitions/_when_steps.rb:121:in `/^I view the master backlog$/'  
    features/common.feature:17:in `When I view the master backlog'  
      
    no link with title, id or text 'Log time' found (Capybara::ElementNotFound)  
    ./features/step_definitions/_given_steps.rb:435:in `/^I am logging time for task (.+)$/'  
    features/extended_timelog.feature:22:in `Given I am logging time for task Task 1'  
      
    no link with title, id or text 'Log time' found (Capybara::ElementNotFound)  
    ./features/step_definitions/_given_steps.rb:441:in `/^I am viewing log time for the ecookbook project$/'  
    features/extended_timelog.feature:31:in `Given I am viewing log time for the ecookbook project'  
      
    no link with title, id or text 'Backlogs' found (Capybara::ElementNotFound)  
    ./features/step_definitions/_given_steps.rb:52:in `/^I am viewing the master backlog$/'  
    features/product_owner.feature:28:in `Given I am viewing the master backlog'  
      
    no link with title, id or text 'Backlogs' found (Capybara::ElementNotFound)  
    ./features/step_definitions/_given_steps.rb:52:in `/^I am viewing the master backlog$/'  
    features/product_owner.feature:38:in `Given I am viewing the master backlog'  
      
    no link with title, id or text 'Backlogs' found (Capybara::ElementNotFound)  
    ./features/step_definitions/_given_steps.rb:52:in `/^I am viewing the master backlog$/'  
    features/product_owner.feature:46:in `Given I am viewing the master backlog'  
      
    no link with title, id or text 'Backlogs' found (Capybara::ElementNotFound)  
    ./features/step_definitions/_given_steps.rb:52:in `/^I am viewing the master backlog$/'  
    features/product_owner.feature:56:in `Given I am viewing the master backlog'  
      
    no link with title, id or text 'Backlogs' found (Capybara::ElementNotFound)  
    ./features/step_definitions/_given_steps.rb:52:in `/^I am viewing the master backlog$/'  
    features/product_owner.feature:63:in `Given I am viewing the master backlog'  
      
    no link with title, id or text 'Backlogs' found (Capybara::ElementNotFound)  
    ./features/step_definitions/_given_steps.rb:52:in `/^I am viewing the master backlog$/'  
    features/product_owner.feature:68:in `Given I am viewing the master backlog'  
      
    no link with title, id or text 'Backlogs' found (Capybara::ElementNotFound)  
    ./features/step_definitions/_given_steps.rb:52:in `/^I am viewing the master backlog$/'  
    features/product_owner.feature:73:in `Given I am viewing the master backlog'  
      
    no link with title, id or text 'Backlogs' found (Capybara::ElementNotFound)  
    ./features/step_definitions/_given_steps.rb:52:in `/^I am viewing the master backlog$/'  
    features/product_owner.feature:80:in `Given I am viewing the master backlog'  
      
    expected: 2,  
    got: 1 (using ==)  
      
    Diff:  
    @@ -1,2 +1,2 @@  
    -2  
    +1  
    (Spec::Expectations::ExpectationNotMetError)  
    ./features/step_definitions/_then_steps.rb:103:in `/^the sprint named (.+) should have (\d+) impediments? named (.+)$/'  
    features/scrum_master.feature:37:in `And the sprint named Sprint 001 should have 2 impediments named Bad Impediment and Impediment 1'  
      
    expected not nil, got nil (Spec::Expectations::ExpectationNotMetError)  
    ./features/step_definitions/_then_steps.rb:110  
    ./features/step_definitions/_then_steps.rb:109:in `each'  
    ./features/step_definitions/_then_steps.rb:109:in `/^the sprint named (.+) should have (\d+) impediments? named (.+)$/'  
    features/scrum_master.feature:46:in `And the sprint named Sprint 001 should have 1 impediment named Good Impediment'  
      
    no link with title, id or text 'Impediments' found (Capybara::ElementNotFound)  
    ./features/step_definitions/web_steps.rb:35  
    ./features/step_definitions/web_steps.rb:14:in `with_scope'  
    ./features/step_definitions/web_steps.rb:34:in `/^(?:|I )follow "([^"]*)"(?: within "([^"]*)")?$/'  
    features/scrum_master.feature:51:in `When I follow "Impediments"'  
      
    no link with title, id or text 'Backlogs' found (Capybara::ElementNotFound)  
    ./features/step_definitions/_given_steps.rb:52:in `/^I am viewing the master backlog$/'  
    features/scrum_master.feature:57:in `Given I am viewing the master backlog'  
      
    no link with title, id or text 'Backlogs' found (Capybara::ElementNotFound)  
    ./features/step_definitions/_given_steps.rb:52:in `/^I am viewing the master backlog$/'  
    features/scrum_master.feature:67:in `Given I am viewing the master backlog'  
      
    no link with title, id or text 'Backlogs' found (Capybara::ElementNotFound)  
    ./features/step_definitions/_given_steps.rb:52:in `/^I am viewing the master backlog$/'  
    features/scrum_master.feature:77:in `Given I am viewing the master backlog'  
      
    no link with title, id or text 'Backlogs' found (Capybara::ElementNotFound)  
    ./features/step_definitions/_given_steps.rb:52:in `/^I am viewing the master backlog$/'  
    features/scrum_master.feature:84:in `Given I am viewing the master backlog'  
      
    no link with title, id or text 'Backlogs' found (Capybara::ElementNotFound)  
    ./features/step_definitions/_given_steps.rb:52:in `/^I am viewing the master backlog$/'  
    features/scrum_master.feature:95:in `Given I am viewing the master backlog'  
      
    Calender feed download did not succeed as expected (RuntimeError)  
    ./features/step_definitions/_when_steps.rb:116:in `/^I try to download the calendar feed, it should (succeed|fail)$/'  
    features/scrum_master.feature:105:in `When I try to download the calendar feed, it should succeed'  
      
    no link with title, id or text 'Product backlog cards' found (Capybara::ElementNotFound)  
    ./features/step_definitions/web_steps.rb:35  
    ./features/step_definitions/web_steps.rb:14:in `with_scope'  
    ./features/step_definitions/web_steps.rb:34:in `/^(?:|I )follow "([^"]*)"(?: within "([^"]*)")?$/'  
    features/scrum_master.feature:114:in `When I follow "Product backlog cards"'  
      
    no link with title, id or text 'Sprint cards' found (Capybara::ElementNotFound)  
    ./features/step_definitions/web_steps.rb:35  
    ./features/step_definitions/web_steps.rb:14:in `with_scope'  
    ./features/step_definitions/web_steps.rb:34:in `/^(?:|I )follow "([^"]*)"(?: within "([^"]*)")?$/'  
    features/scrum_master.feature:121:in `When I follow "Sprint cards"'  
      
    expected not nil, got nil (Spec::Expectations::ExpectationNotMetError)  
    ./features/step_definitions/_then_steps.rb:172:in `/^the wiki page (.+) should contain (.+)$/'  
    features/scrum_master.feature:130:in `Then the wiki page Sprint 001 should contain Sprint Template'  
      
    expected not nil, got nil (Spec::Expectations::ExpectationNotMetError)  
    ./features/step_definitions/_then_steps.rb:172:in `/^the wiki page (.+) should contain (.+)$/'  
    features/scrum_master.feature:138:in `Then the wiki page Sprint 001 should contain Sprint Template'  
      
    undefined method `subject' for nil:NilClass (NoMethodError)  
    ./features/step_definitions/_then_steps.rb:86:in `/^the (\d+)(?:st|nd|rd|th) task for (.+) should be (.+)$/'  
    features/team_member.feature:36:in `And the 2nd task for Story 1 should be A Whole New Task'  
      
    expected: "Whoa there, Sparky",  
    got: "Task 1" (using ==)  
      
    Diff:  
    @@ -1,2 +1,2 @@  
    -Whoa there, Sparky  
    +Task 1  
    (Spec::Expectations::ExpectationNotMetError)  
    ./features/step_definitions/_then_steps.rb:145:in `/^the story named (.+) should have (\d+) task named (.+)$/'  
    features/team_member.feature:44:in `And the story named Story 1 should have 1 task named Whoa there, Sparky'  
      
    expected #has_css?("#taskboard") to return true, got false (Spec::Expectations::ExpectationNotMetError)  
    ./features/step_definitions/_then_steps.rb:24:in `/^I should see the taskboard$/'  
    features/team_member.feature:48:in `Then I should see the taskboard'  
      
    expected #has_css?("#burndown_123") to return true, got false (Spec::Expectations::ExpectationNotMetError)  
    ./features/step_definitions/_then_steps.rb:16:in `/^I should see the burndown chart$/'  
    features/team_member.feature:52:in `Then I should see the burndown chart'  
      
    no link with title, id or text 'Backlogs' found (Capybara::ElementNotFound)  
    ./features/step_definitions/_given_steps.rb:52:in `/^I am viewing the master backlog$/'  
    features/team_member.feature:55:in `Given I am viewing the master backlog'  
      
    no link with title, id or text 'Backlogs' found (Capybara::ElementNotFound)  
    ./features/step_definitions/_given_steps.rb:52:in `/^I am viewing the master backlog$/'  
    features/team_member.feature:60:in `Given I am viewing the master backlog'  
      
    no link with title, id or text 'Backlogs' found (Capybara::ElementNotFound)  
    ./features/step_definitions/_given_steps.rb:52:in `/^I am viewing the master backlog$/'  
    features/team_member.feature:65:in `Given I am viewing the master backlog'  
      
    expected: 1,  
    got: 0 (using ==)  
      
    Diff:  
    @@ -1,2 +1,2 @@  
    -1  
    +0  
    (Spec::Expectations::ExpectationNotMetError)  
    ./features/step_definitions/_then_steps.rb:94:in `/^the server should return (\d+) updated (.+)$/'  
    features/team_member.feature:74:in `And the server should return 1 updated task'  
      
    expected: 2,  
    got: 0 (using ==)  
      
    Diff:  
    @@ -1,2 +1,2 @@  
    -2  
    +0  
    (Spec::Expectations::ExpectationNotMetError)  
    ./features/step_definitions/_then_steps.rb:94:in `/^the server should return (\d+) updated (.+)$/'  
    features/team_member.feature:80:in `And the server should return 2 updated impediments'  
      
    You have a nil object when you didn't expect it!  
    You might have expected an instance of ActiveRecord::Base.  
    The error occurred while evaluating nil.[] (NoMethodError)  
    ./features/step_definitions/_then_steps.rb:179:in `/^(issue|task|story) (.+) should have (.+) set to (.+)$/'  
    features/team_member.feature:95:in `And task A Whole New Task should have remaining_hours set to 3'  
      
    You have a nil object when you didn't expect it!  
    You might have expected an instance of ActiveRecord::Base.  
    The error occurred while evaluating nil.[] (NoMethodError)  
    ./features/step_definitions/_then_steps.rb:179:in `/^(issue|task|story) (.+) should have (.+) set to (.+)$/'  
    features/team_member.feature:104:in `And task A Whole New Task should have estimated_hours set to 3'  
      
    You have a nil object when you didn't expect it!  
    You might have expected an instance of ActiveRecord::Base.  
    The error occurred while evaluating nil.[] (NoMethodError)  
    ./features/step_definitions/_then_steps.rb:179:in `/^(issue|task|story) (.+) should have (.+) set to (.+)$/'  
    features/team_member.feature:117:in `And task A Whole New Task should have estimated_hours set to 8'  
      
    Failing Scenarios:  
    cucumber features/burndown.feature:47 # Scenario: Tasks closed AFTER remaining hours is set to 0  
    cucumber features/burndown.feature:79 # Scenario: Tasks closed BEFORE remaining hours is set to 0  
    cucumber features/burndown.feature:104 # Scenario: New task and story added during sprint  
    cucumber features/burndown.feature:143 # Scenario: Change sprint start date  
    cucumber features/burndown.feature:161 # Scenario: Saturday and Sunday are included in burndown chart  
    cucumber features/common.feature:10 # Scenario: View the product backlog  
    cucumber features/common.feature:15 # Scenario: View the product backlog without any stories  
    cucumber features/extended_timelog.feature:21 # Scenario: Log time and set remaining hours from "Log time"-view  
    cucumber features/extended_timelog.feature:30 # Scenario: Log time from "Log Time"-view without selecting task  
    cucumber features/product_owner.feature:27 # Scenario: View the product backlog  
    cucumber features/product_owner.feature:37 # Scenario: Create a new story  
    cucumber features/product_owner.feature:45 # Scenario: Update a story  
    cucumber features/product_owner.feature:55 # Scenario: Close a story  
    cucumber features/product_owner.feature:62 # Scenario: Move a story to the top  
    cucumber features/product_owner.feature:67 # Scenario: Move a story to the bottom  
    cucumber features/product_owner.feature:72 # Scenario: Move a story down  
    cucumber features/product_owner.feature:79 # Scenario: Move a story up  
    cucumber features/scrum_master.feature:30 # Scenario: Create an impediment  
    cucumber features/scrum_master.feature:39 # Scenario: Update an impediment  
    cucumber features/scrum_master.feature:48 # Scenario: View impediments  
    cucumber features/scrum_master.feature:56 # Scenario: Create a new sprint  
    cucumber features/scrum_master.feature:66 # Scenario: Update sprint details  
    cucumber features/scrum_master.feature:76 # Scenario: Update sprint with no name  
    cucumber features/scrum_master.feature:83 # Scenario: Move a story from product backlog to sprint backlog  
    cucumber features/scrum_master.feature:94 # Scenario: Move a story down in a sprint  
    cucumber features/scrum_master.feature:101 # Scenario: Request the project calendar feed  
    cucumber features/scrum_master.feature:111 # Scenario: Download printable cards for the product backlog  
    cucumber features/scrum_master.feature:117 # Scenario: Download printable cards for the task board  
    cucumber features/scrum_master.feature:124 # Scenario: view the sprint notes  
    cucumber features/scrum_master.feature:132 # Scenario: edit the sprint notes  
    cucumber features/team_member.feature:30 # Scenario: Create a task for a story  
    cucumber features/team_member.feature:38 # Scenario: Update a task for a story  
    cucumber features/team_member.feature:46 # Scenario: View a taskboard  
    cucumber features/team_member.feature:50 # Scenario: View the burndown chart  
    cucumber features/team_member.feature:54 # Scenario: View sprint stories in the issues tab  
    cucumber features/team_member.feature:59 # Scenario: View the project stories in the issues tab  
    cucumber features/team_member.feature:64 # Scenario: Fetch the updated stories  
    cucumber features/team_member.feature:70 # Scenario: Fetch the updated tasks  
    cucumber features/team_member.feature:76 # Scenario: Fetch the updated impediments  
    cucumber features/team_member.feature:88 # Scenario: Copy estimate to remaining  
    cucumber features/team_member.feature:97 # Scenario: Copy remaining to estimate  
    cucumber features/team_member.feature:106 # Scenario: Set both estimate and remaining  
      
    45 scenarios (42 failed, 3 passed)  
    533 steps (42 failed, 92 skipped, 399 passed)  
    3m43.971s  
