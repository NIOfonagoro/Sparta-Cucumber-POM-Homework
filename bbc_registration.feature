Feature: BBC Login

Scenario: Under thirteen trying to register
Given I access the BBC registration page
When I confirm that I am under thirteen
Then I should be directed to the registration page that requires an adult

Scenario: Under thirteen trying to register but enters no email
Given I access the BBC registration page
And have confirmed that I am under thirteen
When I leave the Parent or Guardian email section blank
Then I receive an error once clicking elsewhere on the page or clicking submit

Scenario: Under thirteen trying to register
  Given I access the BBC registration page
  And have confirmed that I am under thirteen
  When I input parent's email
  Then I should be redirected to a page that says email sent

Scenario: Registering as over thirteen years when date that is less than thirteen years ago
Given I access the BBC registration page
And have confirmed that I am over thirteen
When I input a date that is less than thirteen years ago and click continue
Then I should see an error message that says I should be thirteen or over
