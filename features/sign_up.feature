Feature: User sign up
    As a user
    In order to access the articles
    I need to be able to sign up.

    Background: 
        Given I am on the "sign in" page

    Scenario: Signing up as a user[Happy path]
        When I click on "Sign up"
        Then I should be on the "sign up" page
        And I fill in "Email" with "user@gmail.com"
        And I fill in "Password" with "password"
        And I fill in "Password confirmation" with "password"
        And I click on "Sign up"
        Then I visit the "landing" page
