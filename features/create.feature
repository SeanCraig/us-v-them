Feature: Able to create a match

Scenario: Successfully create a match
  When I create a match
  Then an email is sent out to sunscribed users
  And the match appears on the upcoming match list

