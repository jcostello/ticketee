Feature: Hidden Links
  In order to clean up the user experience
  As the system
  I want to hide links from the user who can't act on them

  Background:
    Given there are the following users:
      | email                | password | admin |
      | user@ticketee.com    | password | false |
      | admin@ticketee.com   | password | true  |
    And there is a project called "Vi Improved"

  Scenario: New project link is hidden for non-signed-in users
    Given I am on the homepage
    Then I should not see the "New Project" link

  Scenario: New project link is hidden for signed-in users
    Given I signed in as "user@ticketee.com"
    And I am on the homepage
    Then I should not see the "New Project" link
    
  Scenario: New project link is shown to admins
    Given I signed in as "admin@ticketee.com"
    And I am on the homepage
    Then I should see the "New Project" link

  Scenario: Edit project link is hidden for non-signed-in users
    Given I am on the homepage
    And I follow "Vi Improved"
    Then I should not see the "Edit Project" link

  Scenario: Edit project link is hidden for signed-in users
    Given I signed in as "user@ticketee.com"
    And I am on the homepage
    And I follow "Vi Improved"
    Then I should not see the "Edit Project" link
    
  Scenario: Edit project link is shown to admins
    Given I signed in as "admin@ticketee.com"
    And I am on the homepage
    And I follow "Vi Improved"
    Then I should see the "Edit Project" link

  Scenario: Delete project link is hidden for non-signed-in users
    Given I am on the homepage
    And I follow "Vi Improved"
    Then I should not see the "Delete Project" link

  Scenario: Delete project link is hidden for signed-in users
    Given I signed in as "user@ticketee.com"
    And I am on the homepage
    And I follow "Vi Improved"
    Then I should not see the "Delete Project" link
    
  Scenario: Delete project link is shown to admins
    Given I signed in as "admin@ticketee.com"
    And I am on the homepage
    And I follow "Vi Improved"
    Then I should see the "Delete Project" link
