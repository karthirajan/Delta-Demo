#Author: your.email@your.domain.com
@tag
Feature: To test comment and complaint section

  @tag1
  Scenario: To test the steps in comment section
    Given The User is in Delta homepage
    When The user navigates to comment and complain section
    Then The user should see the four steps
      | STEP 1 TELL US ABOUT THE TOPIC | STEP 2 TELL US ABOUT YOURSELF | STEP 3 TELL US ABOUT THE DETAILS | STEP 4TELL US ABOUT THE COMMENT/COMPLAINT |