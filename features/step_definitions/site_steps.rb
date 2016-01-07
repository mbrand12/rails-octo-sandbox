Given(/^that I am on the homepage$/) do
  visit("/")
end

Given(/^that I am on the login page$/) do
  visit(new_user_session_path)
end

Then(/^I should see the confirmation message$/) do
  expect(page).to have_content("Your email address has been successfully confirmed.")
end

Then(/^I should see the welcome message$/) do
  expect(page).to have_content("Signed in successfully.")
end

Then(/^I should see the goodbye message$/) do
  expect(page).to have_content("Signed out successfully.")
end

Then(/^I should see the password changed message$/) do
  expect(page).to have_content("Your password has been changed successfully.")
end
