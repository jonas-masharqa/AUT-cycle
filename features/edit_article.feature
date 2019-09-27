Feature: Edit article
	As a publisher
	In order to keep my content accurate
	I would like to be able to edit my articles

	Background:
	 Given the following article exist
		|title|content|
		|craft|academy|
		And I visit the "landing" page

	Scenario:
		And I click on "Edit"
		Then I visit the edit page
		And I fill in "content" with "hello school"
		Then I should be on "hello school" page
		Then I should see "Article has been edited"

		