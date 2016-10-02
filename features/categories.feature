Feature: Add or Edit categories
  As a blog administrator
  In order to categorize my blog posts
  I want to be able to add and edit categories

  Background:
    Given the blog is set up
    And I am logged into the admin panel

  Scenario: Successfully add a new category
    Given I am on the new categories page
    Then I should see "Name"
    When I fill in "Name" with "First"
    And I fill in "Keywords" with "ABC"
    And I fill in "Description" with "XYZ"
    And I press "Save"
    Then I should be on the new categories page
    And I should see "First"
