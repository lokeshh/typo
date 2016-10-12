Feature: Merge Articles
  As a blog administrator
  In order to avoid multiple similar articlse
  I want to be able to merge two articles

  Background:
    Given the blog is set up
    And I am logged into the admin panel
    And the following articles exist
      | id | title | body |
      | 2  | Foo | Second |
      | 3  | Bar | Third |    

  Scenario: Successfully mrege articles
    Given I am on the article page of "Foo"
    And I fill in "merge_with" with "3"
    And I press "Merge"
    Then the article "Foo" should have body "Second Third"
    And show me the page

