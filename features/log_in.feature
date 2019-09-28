Feature: User log in
    As a user
    In order to access both my account and the articles
    I need to be able to sign in.

    Background:
        Given the following user exist
            |email                  |password|
            |stupidnoel@gmail.com   |password|
        And I am on the "sign in" page

    Scenario: User logs in[Happy Path]
        When I fill in "Email" with "user@gmail.com"
        And I fill in "Password" with "password"
        And I click on "Log in"
        Then I visit the "landing" page

    Scenario: 