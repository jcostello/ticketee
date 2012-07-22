Feature: Creating Tickets
  In order to create tickets for projects
  As a user
  I want to be able to select a project and do that

  Background:
    Given there is a project called "Google Chrome"
    And I am on the homepage
    When I follow "Google Chrome"
    And I follow "New Ticket"

  Scenario: Creating a ticket
    When I fill in "Title" with "Non-standars compliance"
    And I fill in "Description" with "Its working slow"
    When I press "Create Ticket"
    Then I should see "Ticket has been created."

  Scenario: Creating a ticket without valid attributes
    When I press "Create Ticket"
    Then I should see "Ticket has been not created."
    And I should see "Title can't be blank"
    And I should see "Description can't be blank"

  Scenario: Creation a ticket with a short description
    When I fill in "Title" with "Non-standars compliance"
    And I fill in "Description" with "it sucks"
    And I press "Create Ticket"
    Then I should see "Ticket has been not created."
    And I should see "Description is too short"
