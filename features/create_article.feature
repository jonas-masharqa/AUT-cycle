Feature: Create article
  As a publisher
  In order to add relevant content to my news service
  I would like to be able to create articles

Background:
Given the following user exists
	| email 				| password |
	| john@doe.com 	| password |
  And I visit the "landing" page
  And I fill in "Email" with "john@doe.com"
	And I fill in "Password" with "password"
	And I click on "Log in"
  And I click on "New Article"

Scenario: Successfully create an article [Happy Path]
  When I fill in "Title" with "Learning Rails 5"
  And I fill in "Content" with "Excited about learning a new framework"
  And I click on "Save Article"
  Then I should be on "Learning Rails 5" page
  And I should see "Article was successfully created."
  And I should see "Learning Rails 5"
  And I should see "Excited about learning a new framework"

Scenario: Publisher doesn't enter a title for the article [Sad Path]
  When I fill in "Content" with "Excited about learning a new framework"
  And I click on "Save Article"
  Then I should see "Title can't be blank"