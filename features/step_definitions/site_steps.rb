Given(/^that I am on the homepage$/) do
  visit("/")
end

Then(/^I should see the confirmation message$/) do
  expect(page).to have_content("Your email address has been successfully confirmed.")
end

Then(/^I should see the wellcome message$/) do
  expect(page).to have_content("Signed in successfully.")
end

Then(/^I should see the goodbye message$/) do
  expect(page).to have_content("Signed out successfully.")
end
