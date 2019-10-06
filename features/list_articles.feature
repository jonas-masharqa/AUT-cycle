Feature: List articles on landing page
    As a visitor,
    when I visit the application's landing page,
    I would like to see a list of articles

Background:
    Given the following user exists
	| email 	   | password |
	| john@doe.com | password |
    And the following article exist
    | title       | content  |
    | super mario | nintendo |
    And I visit the "landing" page
    And I fill in "Email" with "john@doe.com"
	And I fill in "Password" with "password"
	And I click on "Log in"

Scenario: Viewing list of articles on the application's landing page
    When I visit the "landing" page
    Then I should see "super mario"
    And I should see "nintendo"