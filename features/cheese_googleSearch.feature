Feature: cheese Google-search
         To search for cheese and should get the page title
Scenario: Finding some cheese
   Given I am on the Google search page
   When I search for "Cheese!"
   Then the page title should start with "cheese"