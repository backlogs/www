---
title: Build failed
layout: default
---
# Build failed

    NOTE: SourceIndex.new(hash) is deprecated; From /home/hnse/.rvm/gems/ruby-1.8.7-p358@redmine/gems/rails-2.3.14/lib/rails/vendor_gem_source_index.rb:100:in `new'.  
    .................................................................................................................................................................................................................................................................................F........................................................................................................................................................................................................................................................................................................  
      
    (::) failed steps (::)  
      
    expected #has_content?("Impediment 1") to return true, got false (Spec::Expectations::ExpectationNotMetError)  
    ./features/step_definitions/web_steps.rb:110  
    ./features/step_definitions/web_steps.rb:14:in `with_scope'  
    ./features/step_definitions/web_steps.rb:108:in `/^(?:|I )should see "([^"]*)"(?: within "([^"]*)")?$/'  
    features/scrum_master.feature:54:in `And I should see "Impediment 1"'  
      
    Failing Scenarios:  
    cucumber features/scrum_master.feature:48 # Scenario: View impediments  
      
    45 scenarios (1 failed, 44 passed)  
    533 steps (1 failed, 532 passed)  
    6m40.017s  
