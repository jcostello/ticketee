Feature: Viewing projects
  In order to assign tickets to a project
  As a user
  I want to be on the project page for "Vi Improved"

  Scenario: Listing all projects
    Given there is a project called "Vi Improved"
    And I am on the homepage
    When I follow "Vi Improved"
    Then I should be on the project page for "Vi Improved"
