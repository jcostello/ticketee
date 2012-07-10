Feature: Creating projects
  In order to have projects to assing tickets to
  As a user
  I want to create them easily

  Background:
    Given I am on the homepage
    When I follow "New Project"
    
  Scenario: Creating a project
    And I fill in "Name" with "Vi Improved"
    And I press "Create Project"
    Then I should see "Project has been created."
    And I should be on the project page for "Vi Improved"
    And I should see "Vi Improved - Projects - Ticketee"

  Scenario: Creating a project without a name
    And I press "Create Project"
    Then I should see "Project has been not created."
    And I should see "Name can't be blank"
