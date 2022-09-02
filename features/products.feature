Feature: Products Table

  Products Table displays accurate and current information on two categories of searchable products based on stock availability and price.

Rule: Out of stock products appear differently to in-stock products.

Scenario: A product is out of stock
  Given I have an out of stock product
  When I check the 'In Stock Only' button
  Then I should only see filtered in-stock products

  Given I have an out of stock product
  When it is shown
  Then the text colour should be red

Rule: Searching for a product will display the details of the corresponding search.

Scenario: The searchbox input is 'Apple'
  Given I search for 'Apple'
  When I view the products table
  Then only 'Apple' should appear in the filtered table
  And the 'Vegetables' list should be empty

Scenario: The searchbox input is 'Passionfruit'
  Given I search for 'Passionfruit'
  When I view the products table
  And the 'In Stock Only' button is checked
  Then the table should be filtered to be empty

Scenario: The searchbox input is a single letter
  Given I search 'p'
  When I view the products table
  Then I should see multiple filtered products containing the letter 'p'

  Given I search 'p'
  When I view the products table
  And the 'In Stock Only' button is checked
  Then I should only see filtered in-stock products containing the letter 'p'