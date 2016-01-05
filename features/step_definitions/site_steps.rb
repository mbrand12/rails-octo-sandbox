Given(/^that I am on the homepage$/) do
  visit("/")
end

Then(/^I should see the confirmation message$/) do
  expect(page).to have_content("Your email address has been successfully confirmed.")
end
