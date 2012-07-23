Feature: Deleting tickets
  In order to remove tickets 
  As a user
  i want to press a button to make them dissapear

  Background: 
    Given there are the following users:
      | email               | password |
      | user@ticketee.com   | password |
    And I am signed in as them
    And there is a project called "Vi Improved"
    And "user@ticketee.com" has created a ticket for this project:
      | title             | description                   |
      | Make it shiny!    | Gradients! Starbursts! Oh my! |
    Given I am on the homepage
    When I follow "Vi Improved"
    And I follow "Make it shiny!"

  Scenario: Updating a ticket
    When I follow "Delete Ticket"
    Then I should see "Ticket has been deleted."
    And I should be on the project page for "Vi Improved"
