Feature: Bookcategory

  Background: user should be able to see homepage
    Given user enter url "https://demo.nopcommerce.com" in browser
    And   user is  on home page

  Scenario Outline: user should be able to see top menu tabs on homepage with catergories
    When user is on homepage
    Then user should be able to see top menu tabs with '<categories>'
    Examples:
      | categories        |
      | computer          |
      | Electronics       |
      | Apparel           |
      | digital downloads |
      | books             |
      | Jewellary         |
      | gift card         |

  Scenario Outline: user should be able to see book page with filters
    When user select book category from top menu on homepage
    Then user sholud be navigated to book category
    And  user sholuld be able to see '<filters>'
    Examples:
      | filters  |
      | short by |
      | display  |
      | the grid |
      | list tab |

  Scenario Outline: user should be able to choose any filter option with specific result
    Given user is on homepage
    When  user click on '<filter>'
    And   user click on '<option>'
    Then  user should be able to choose any option from list
    And   user should be able to see'<result>'
    Examples:
      | filter  | option            | result                                                        |
      | sort by | name:A to Z       | sorted product with product name in alphabetical order A to Z |
      | sort by | name:Z to A       | sorted product with product name in alphabetical order Z to A |
      | sort by | price:low to high | sorted product with the price in descending order             |
      | sort by | price:high to low | sorted product with the price in ascending order              |
      | sort by | created on        | recently added product should be show first                   |
      | display | 3                 | 3 product in a page                                           |
      | display | 6                 | 3 product in a page                                           |
      | display | 9                 | 3 product in a page                                           |

  Scenario Outline: user should be able to see product display format according display format type as per given picture in srs document
    Given user is on book page
    When user click on '<display format icon>'
    Then user should be able to see product display format according display format type as per given picture in srs document
    Examples:
      | display format icon |
      | Grid                |
      | List                |

