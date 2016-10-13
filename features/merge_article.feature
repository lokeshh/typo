Feature: Merge Articles
  As a blog administrator
  In order to avoid multiple similar articlse
  I want to be able to merge two articles

  Background:
    Given the blog is set up
    And I am logged into the admin panel
    And the following articles exist
      | title | body |
      | Foo | Second |
      | Bar | Third |
    # And I comment "abc" in article "Foo"
    # And I comment "def" in article "Bar"

  Scenario: Successfully mrege articles
    Given I am on the article page of "Foo"
    And I fill in "merge_with" with id of "Bar"
    And I press "Merge"
    Then the article "Foo" should have body "Second Third"
    # And the article "Foo" should have comments "abc", "def"

