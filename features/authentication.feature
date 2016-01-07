Feature: Authentication
In order to acces the website's awesome features
As a user
I should be able to sign up, sign in and sign out

  Scenario: Sign up
    Given that I am on the homepage
    When I sign up
    And I receive an email
    And I open the email
    And I click the first link in the email
    Then I should see the confirmation message

  Scenario: Log in, Log out
    Given that I am a registered user
    And that I am on the homepage
    When I log in
    Then I should see the welcome message
    When I log out
    Then I should see the goodbye message

  Scenario: Password reset
    Given that I am a registered user
    And that I am on the login page
    When I request password reset
    And I receive an email
    And I open the email
    And I click the first link in the email
    And I change the password
    Then I should see the password changed message
