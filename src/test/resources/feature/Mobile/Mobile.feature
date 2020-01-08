#Author: your.email@your.domain.com
@tag
Feature: To test the mobile sectoin

  @tag1
  Scenario: To verify  the mobile section navigation to play store
    Given The User is in Delta homepage
    When The user navigates to mobile section
    And The user clicks the play store icon
    Then The user should see the play store page
    |Fly Delta - Apps on Google Play|
