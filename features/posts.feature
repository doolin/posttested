Feature: Add pages to create and look at posts

  Users want to write blog posts and suchlike then
  look at them later.

  Scenario: The current user creates a post with title, date, content, author
    Given current user is signed in
      And is on the post creation page
    When the user publishes a post
    Then the user is shown the new post
