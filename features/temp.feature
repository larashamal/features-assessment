Feature: Temperature Converter

  Temperature Converter provides accurate information into the direct conversion of degrees Celsius to degrees Fahrenheit through various forms of input.

Rule: When the app is opened, both input boxes should display 0.

 Scenario: The app is opened

    Given the page is opened
    When I view the input boxes
    Then the inputs should display 0 as default

 Scenario: The page is refreshed with an input in one of the boxes

    Given the page is refreshed with 100 in the input correlating to Celsius
    When I refresh the page
    Then the inputs should reset and display 0 as a default


Rule: The app should display the correct alternating conversion when an input is typed within the Celsius or Fahrenheit input box.

  Scenario: cel

  Scenario: fah


Rule: The input of both boxes should update when a number is typed in one box.

    Scenario: cel

    Scenario: Fahrenheit


Rule: The input of both boxes should update when an arrow is pressed next to the input box.

  Scenario: cel

  Scenario: fah


Rule: Characters are not allowed to be typed within the input boxes.

  Scenario: cel

  Scenario: fah