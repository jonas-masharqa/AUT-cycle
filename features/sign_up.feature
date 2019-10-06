Feature: User sign up
    As a user
    In order to access the articles
    I need to be able to sign up.

    Background: 
        Given the following user exist
            |email                  |password|
            |stupidnoel@gmail.com   |password|
        And I am on the "sign in" page
        And I click on "Sign up"
        Then I should be on the "sign up" page

    Scenario: Signing up as a user[Happy Path]
        When I fill in "Email" with "user@gmail.com"
        And I fill in "Password" with "password"
        And I fill in "Password confirmation" with "password"
        And I click on "Sign up"
        Then I visit the "landing" page

    Scenario: User doesn't fill out forms[Sad Path]
        When I click on "Sign up"
        And I should see "Email can't be blank"
        And I should see "Password can't be blank"

    Scenario: User inputs password which is less than 6 charactes[Sad Path]
        When I fill in "Email" with "user@gmail.com"
        And I fill in "Password" with "hey"
        And I fill in "Password confirmation" with "hey"
        And I click on "Sign up"
        Then I should see "Password is too short"

    Scenario: User puts in different password in confirmation[Sad Path]
        When I fill in "Email" with "user@gmail.com"
        And I fill in "Password" with "hey"
        And I fill in "Password" with "hello"
        And I click on "Sign up"
        Then I should see "Password confirmation doesn't match Password"

    Scenario: User can't sign up with used email[Sad Path]
            When I fill in "Email" with "stupidnoel@gmail.com"
            And I fill in "Password" with "password"
            And I fill in "Password confirmation" with "password"
            And I click on "Sign up"
            Then I should see "Email has already been taken"