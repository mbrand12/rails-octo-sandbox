When(/^I sign up$/) do
  click_link "Sign up"
  fill_in "Email", :with => "test@example.com"
  fill_in "Password", :with => "password"
  fill_in "Password confirmation", :with => "password"
  click_button "Sign up"
end

Given(/^that I am an registered user$/) do
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
