Feature: BBC Login

  Scenario: Under thirteen trying to register
    Given I access the BBC register page
    When I confirm that I am under thirteen
    Then I should be directed to the registration page that requires an adult

  Scenario: Under thirteen trying to register but enters no email
    Given I access the BBC register page
      And have confirmed that I am under thirteen
    When I leave the Parent or Guardian email section blank
    Then I receive an error once clicking elsewhere on the page or clicking submit
