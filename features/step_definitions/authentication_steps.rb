When(/^I sign up$/) do
  click_link "Sign up"
  fill_in "Email", :with => "test@example.com"
  fill_in "Password", :with => "password"
  fill_in "Password confirmation", :with => "password"
  click_button "Sign up"
end

Given(/^that I am a registered user$/) do
  create(:user, email: "test@example.com")
end

When(/^I log in$/) do
  click_link "Log in"
  fill_in "Email", :with => "test@example.com"
  fill_in "Password", :with => "password"
  click_button "Log in"
end

When(/^I log out$/) do
  click_link "Logout"
end

When(/^I request password reset$/) do
  click_link "Forgot your password?"
  fill_in "Email", :with => "test@example.com"
  click_button "Send me reset password instructions"
end

When(/^I change the password$/) do
  fill_in "New password", with: "password1"
  fill_in "Confirm new password", with: "password1"
  click_button "Change my password"
end
