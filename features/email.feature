Feature: Registering with an email address

Background:
  Given I have the option to register using an email address

Scenario: Register using a valid email address
  When I enter a valid email address
  And I press submit
  Then I see the successful registration message

Scenario: Register using an invalid email address
  When I enter an invalid email address 
  And I press submit
  Then I see an error message

Scenario: Register without entering an email address
  When I leave the email address blank
  And I press submit
  Then I am asked to enter an email address
