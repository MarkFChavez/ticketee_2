#STEPS

Given /^I have an account:$/ do |table|
	table.hashes.each do |attributes|
		@user = FactoryGirl.create(:user, attributes)
	end
end

Given /^I have a project:$/ do |table|
	table.hashes.each do |attributes|
		@project = FactoryGirl.create(:project, attributes.merge(user: @user))
	end
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

Then /^I should not see "(.*?)"$/ do |text|
	page.should_not have_content(text)
end

Then /^I should be on "(.*?)" page$/ do |project_name|
	project = @user.projects.find_by_name(project_name)
	current_path.should == project_path(project)
end

Then /^I must be on the login page$/ do
	current_path.should == new_user_session_path
end
