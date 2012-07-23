Feature: Viewing tickets
  In order to view the tickets for a project
  As a user
  I want to see them on the project's page

  Background:
    Given there are the following users:
      | email               | password |
      | user@ticketee.com   | password |
    And there is a project called "Vi Improved"
    And "user@ticketee.com" has created a ticket for this project:
      | title          | description                   |
      | Make it shiny! | Gradients! Starbursts! Oh my! |
    And there is a project called "Emacs"
    And "user@ticketee.com" has created a ticket for this project:
      | title                | description         |
      | Standards compliance | Isn't a joke.       |
    And I am on the homepage

  Scenario: viewing tickets for a given project
    When I follow "Vi Improved"
    Then I should see "Make it shiny!"
    And I should not see "Standards compliance"
    When I follow "Make it shiny!"
    Then I should see "Make it shiny!" within "#ticket h2"
    And I should see "Gradients! Starbursts! Oh my!"

    When I follow "Ticketee"
    And I follow "Emacs"
    Then I should see "Standards compliance"
    And I should not see "Make it shiny!"
    When I follow "Standards compliance"
    Then I should see "Standards compliance" within "#ticket h2"
    And I should see "Isn't a joke."
