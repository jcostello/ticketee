Feature: deleting projects
  In order to remove needless projects
  As a project manager
  I want to make them disappear

  Background:
    Given there are the following users:
      | email               | password | admin |
      | user@ticketee.com   | password | true  |
    And I am signed in as them

  Scenario: Deleting a project
    Given there is a project called "Vi Improved"
    And I am on the home page
    When I follow "Vi Improved"
    And I follow "Delete Project"
    Then I should see "Project has been deleted."
    Then I should not see "Vi Improved"
