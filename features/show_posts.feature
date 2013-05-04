Feature: Show posts in landing page
  In order to know more about me
  As myself
  I want to see the latest posts in the landing

  Scenario: I have less than 4 posts
    Given 3 posts exist
    When I visit the home page
    Then I should see them all

  Scenario: I have more than 4 posts
    Given 6 posts exist
    When I visit the home page
    Then I should see the last 4 posts

  Scenario: About section
    Given Posts from different kinds exist
    When I visit the info page
    Then I should see the posts
    And I should see them in the right place
