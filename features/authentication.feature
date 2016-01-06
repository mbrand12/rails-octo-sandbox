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
    Given that I am an registered user
    And that I am on the homepage
    When I log in
    Then I should see the wellcome message
    When I log out
    Then I should see the goodbye message
    # TODO: FILL IN THE STEPS :)
