Feature: Demo Nopcommerce's topmenu acceptance critaria
As a user, I would like to check acceptance critaria of Nopcommerce topmenu
Background: User is on given URL
When  User type URL https://demo.nopcommerce.com
And   User click on Enter button
Then  User is on given URL

Scenario: Verify that user can navigate to Books category
When  User is o given URL
And   Click on Books tab top menu
Then  User is navigated to Books category page

Scnario: Varify user can see that Books Category page with filters and list of products
When  User is on given URL
And   Click on Books tab top menu
And   Check Filters and List tab
Then  Bookd category page displayed with filters and list tabs

Scenario: Varify user can see that 'Sort by' filter on Books category page
Given  User is on Books Category page
When   User is on Books Category page
And    Check 'Sort by' filter is present
Then   'Sort by' filter is available on Book Category page

Scenario: Varify user can see that 'Display' filter on Books category page
Given  User is on Books Category page
When   User is on Books Category page
And    Check 'Display' filter is present
Then   'Display' filter is available on Book Category page

Scenario: Varify user can see that 'Grid' filter on Books category page
Given  User is on Books Category page
When   User is on Books Category page
And    Check 'Grid' filter is present
Then   'Grid' filter is available on Book Category page

Scenario: Varify user can see that 'List' filter on Books category page
Given  User is on Books Category page
When   User is on Books Category page
And    Check 'List' filter is present
Then   'List' filter is available on Book Category page

Scenario: Varify user can see  'Name: A to Z' selection is present in 'Sort by' filter
Given  User is on Books Category page
When   User is on Books Category page
And    Click on 'Sort by'filter
And    Check that 'Name: A to Z' selection is present
Then   'Name: A to Z' selection is present in  'Sort by' filter

Scenario: Varify user can see  'Name: A to Z'  is first option in 'Sort by' filter
Given  User is on Books Category page
When   User is on Books Category page
And    Click on 'Sort by'filter
And    Check that 'Name: A to Z' is first in order
Then   'Name: A to Z' is first option in order









