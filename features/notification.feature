Feature: Email notifications about upcoming game

Scenario: Email is sent to interested game players
  Given I have signed up to alerts for a sport
  When someone creates a match for that sport
  Then I will receive an email about that match

Scenario: Email is not sent to non interested game players
  Given I have not signed up to alerts for a sport
  When someone creates a match for that sport
  Then I do not receive an email about that match
