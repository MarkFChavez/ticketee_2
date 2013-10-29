#STEPS

Given /^I have an account with email "(.*?)" and password "(.*?)"$/ do |email, pass|
	@user = FactoryGirl.create(:user, email: email, password: pass)
end

Given /^I am on the homepage$/ do
	visit root_path
end

When /^I fill in "(.*?)" with "(.*?)"$/ do |field, value|
	fill_in field, with: value
end

When /^I follow "(.*?)"$/ do |button|
	click_button button
end

When /^I go to "(.*?)"$/ do |link|
	click_link link
end

Then /^I should see "(.*?)"$/ do |text|
	page.should have_content(text)
end
