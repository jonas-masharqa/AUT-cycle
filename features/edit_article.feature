Feature: Edit article
	As a publisher
	In order to keep my content accurate
	I would like to be able to edit my articles

Background:
	Given the following user exists
	| email 				| password |
	| john@doe.com 	| password |
	And the following article exist
	| title 					| content |
	| super mario 		| nintendo |
	And I visit the "landing" page
	And I fill in "Email" with "john@doe.com"
	And I fill in "Password" with "password"
	And I click on "Log in"

Scenario: User edits article
	When I click on "Edit"
	And I fill in "Title" with "hello school"
	And I click on "Update Article"
	Then I should be on the "updated object" page

		