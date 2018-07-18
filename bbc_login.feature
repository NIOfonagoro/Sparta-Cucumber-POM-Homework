Feature: BBC Login

  Scenario: Inputting incorrect username & incorrect password credentials shows an error.
    Given I access the BBC login page
      And I input incorrect username
      And I input incorrect password details
    When I try to Login
    Then I receive and error

  Scenario: Inputting correct username/email credentials and incorrect password shows an error.
    Given I access the BBC login page
      And I input correct username or email
      But I input incorrect but valid password details
    When I try to Login
    Then I receive an error
