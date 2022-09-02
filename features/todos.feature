Feature: Todos

  Todos is an app for creating a to-do list and allowing the user to add, check off, delete and edit tasks in an enumerated list.

Rule: A todo can be added and deleted.

  Scenario: A todo is created
    Given I type a new todo in the input box
    When I press the 'Add' button
    Then the todo should be added to the bottom of the enumerated list


  Scenario: A todo is deleted
    Given I have a todo
    When I press the 'Delete' button next to it
    Then the todo should no longer appear on the list

Rule: An empty todo cannot be created.

  Scenario: The input box is empty
    Given the input box has no characters in it
    When I click the 'Add' button
    Then a todo should not be created
    And the mouse pointer should display a prohibition sign

Rule: A todo is completed and should appear differently to others.

  Scenario: A todo is completed
    Given I press the checkbox next to a todo
    When I view the text of the todo
    Then the text should be strikethrough

  Scenario: A todo is completed and the page is refreshed
    Given the checkbox next to a todo is selected
    When I refresh the Todo page
    Then the page should save the status of the todo

Rule: A todo can be edited.

  Scenario: A todo is edited
    Given I press the 'Edit' button next to a todo
    When I view the input
    Then the text of the todo should be in the input box
    And the 'Add' button changes into 'Update'

    Given I press the 'Edit' button next to a todo
    When I edit the text
    And press the 'Update' button
    Then the new text should update

    Given I edit a checked todo and press 'Update'
    When I view the updated todo
    Then the todo should remain checked
    And the todo should be in the same position within the list