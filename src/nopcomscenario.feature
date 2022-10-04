Feature:  Bookcategory

  Background: I should be able to see homepage
    Given I enter  URL"https://demo.nopcommerce.com/" in browser
    And   I am on home page

    Scenario Outline: I should be able to see top menu tabs on homepage with categories
      When I am on home page
      Then I should be able to see top menu tabs with "<categories>"
      Examples:
      |Categories           |
      |Computer             |
      |Electronic           |
      | Apparel             |
      | Digital downloads   |
      | Books               |
      | Jwellery            |
      | Gift card           |

      Scenario Outline: I should be able to see book page with filters
        When I select book category from top menu tabs on home page
        Then I should be navigated to book category
        And  I should be able to see "<filters>"
        Examples:
        | Filters     |
        | Short by    |
        | Display     |
        | The Grid    |
        | List tab    |

       Scenario Outline: I should be able to see list of terms of each filter
         Given  I am on book page
         When   I click on "<filter>"
         Then   I should be able to see "<list>" in dropdown menu
         Examples:
         | Filter           |  List                                                                            |
         | Sort by          | Name: A to Z, Name: Z to A, Price:Low to High, Price: high to Low, Created on    |
         | Display          | 3, 6, 9                                                                          |

         Scenario Outline: I should be able to choose any filter option with specific result
           Given I am on book page
           When  I click on "<filter>"
           And   I click on any "<option>"
           Then  I should be able to choose any filter option from the list
           And   I should be able to see "<result>"
           Examples:
           | Filter        | Option            | Result                                                               |
           | Sort by       | Name:A to Z       | sorted product with the prouduct name in alphabetical order A to Z   |
           | Sort by       | Name:Z to A       | sorted product with the prouduct name in alphabetical order Z to A   |
           | Sort by       | price:low to high | sorted order with the price in descending order                      |
           | Sort by       | price:High to low | sorted order with the price in ascending order                       |
           | Sort by       | Created on        | Recently added product should be show first                          |
           | Display       | 3                 | 3 products in page                                                   |
           | Display       | 6                 | 6 products in page                                                   |
           |Display        | 9                 | 9 products in page                                                   |

           Scenario Outline: I should be able to see product display formet according display format typenas per given picture in srs document
             Given  I am on book page
             When   I click on "<display format icon>"
             Then   I should be able to see product display format according format type as per hgiven picture in SRS document
             Examples:
             | display format icon   |
             | Grid                  |
             | List                  |




