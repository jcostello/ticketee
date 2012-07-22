Feature: Deleting tickets
  In order to remove tickets 
  As a user
  i want to press a button to make them dissapear

  Background: 
    Given there is a project called "Vi Improved"
    And that project has a ticket:
      | title             | description                   |
      | Make it shiny!    | Gradients! Starbursts! Oh my! |
    Given I am on the homepage
    When I follow "Vi Improved"
    And I follow "Make it shiny!"

  Scenario: Updating a ticket
    When I follow "Delete Ticket"
    Then I should see "Ticket has been deleted."
    And I should be on the project page for "Vi Improved"
