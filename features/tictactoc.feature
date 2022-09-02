Feature: Tic Tac Toe

  Tic Tac Toe is an app that allows 2 players to play the game and displays the result after each round.

Rule: Tic Tac Toe should allow players to alternate turns.

  Scenario: A box is clicked and displays the first players position

    Given I click a box in the grid
    And 'X' is shown
    When I click again in another box
    Then 'O' should appear

Rule: Tic Tac Toe should begin with an empty grid.

  Scenario: The app is opened

    Given I open the app
    When the page is loaded
    Then only an empty grid should be shown

  Scenario: A new game starts with 'X'

    Given I open the app
    When I click an empty box in the grid
    Then 'X' should appear in the box

  Scenario: Opposing tries to click a box with a character already displayed within it

    Given X has occupied a box
    When O attempts to click the same box
    Then nothing changes and X is still registered in the box


Rule: When a result is shown, no more boxes can be clicked until the page is refreshed and the game restarts

  Scenario: A result is shown and a box empty

    Given a result is snown
    When I attempt to click an empty box in the grid
    Then the click does not reflect on the page

  Scenario: A result is shown and the page is refreshed

    Given a result is shown
    When I refresh the page
    Then the grid is empty and the game restarts


Rule: various winnning positions in the grid should display the correct result.

  Scenario: X wins with various three-in-a-row lines

    Given X has three in a row vertically
    When the result is shown
    Then the title should display 'X wins!'

    Given X has three in a row horizontally
    When the result is shown
    Then the title should display 'X wins!'

    Given X has three in a row diagonally
    When the result is shown
    Then the title should display 'X wins!'


Rule: When no player has achieved three-in-a-row, the title should iterate that no one has won.

  Scenario: The players have tied
    Given no player has achieved three-in-a-row
    When the game ends
    Then the title should display 'Tie!'

