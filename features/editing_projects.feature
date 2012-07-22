Feature: Editing Projects
  In order to update project information
  As a user
  I want to be able to do that through ad interfece

  Background:
    Given there is a project called "Vi Improved"
    And I am on the home page
    When I follow "Vi Improved"
    And I follow "Edit Project"

  Scenario: Updating a project
    And I fill in "Name" with "Vim"
    And I press "Update Project"
    Then I should see "Project has been updated."
    Then I should be on the project page for "Vim"

  Scenario: Updating a project with invalid attributes
    And I fill in "Name" with ""
    And I press "Update Project"
    Then I should see "Project has not been updated."
    
