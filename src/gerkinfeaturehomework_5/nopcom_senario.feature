Feature: Acceptance Criteria
  As a user, I would like to check acceptance criteria of nopcommerce topmenu

  Background: User is on given URL
    When User type Url https://demo.nopcommerce.com
    And  User click on enter button
    Then user is on given URL

  Scenario: verify that user can navigate to Books category
    When  User is on given URL
    And   User  Click on books tab on Top Menu
    Then  User is navigated to Books Category page

  Scenario: verify that user can see the books category page with filters and list of products
    When User is on given Url
    And  Click on books tab on Top Menu
    And  Check Filters and List Tab
    Then Books category page is displayed with filters and list tabs

  Scenario: Verify that user can see 'Sort by' filter on book Category page
    When User is on Books category page
    And  Check 'sort by' filter is present
    Then 'Sort  by' filter is available on Book Category page

  Scenario: verify that user can see 'Display' filter on Book Category page
    When User is on Books category page
    And  Check 'Display' filter is present
    Then 'Display' filter is available on Book Category page

  Scenario: verify that user can see 'Grid' tab on Book Category page
    When User is on Books category page
    And  Check 'Grid' tab is present
    Then 'Grid' tab is available on Book Category page

  Scenario: verify that user can see 'List' filter on Book Category page
    When User is on Books category page
    And  Check 'List' tab is present
    Then 'list' tab is available on Book Category page

  Scenario: verify that user can see 'Name: A to Z' is first option in 'Sort by' filter
    When  User is on Books Category page
    And   Click on 'Sort by' Filter
    And   Check that 'Name: A to Z' is first in order
    Then 'Name: A to Z' is first option in order

  Scenario: verify that user can see 'Name: A to Z' is first option in 'Sort by' filter
    When  User is on Books Category page
    And   Click on 'Sort by' Filter
    And   Check that 'Name: A to Z' selection is present
    Then 'Name: A to Z' selection is present in 'Sort by'filter

  Scenario: verify that user can see 'Name: A to Z' is filter is function as expected
    When  User is on Books Category page
    And   Click on 'Sort by' Filter
    And   select 'Name: A to Z' filter
    Then All products are displayed in alphabetical order





