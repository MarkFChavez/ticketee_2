Feature: Editing projects
	In order to edit projects easily
	As a user
	I should be on the projects page

	Background:
		Given I have an account:
			| email			| password			|
			| user@example.com	| 12345678			|
		And I have a project:
			| name			| description			|
			| ticketee		| sample project		|
		And I am on the homepage
		And I fill in "Email" with "user@example.com"
		And I fill in "Password" with "12345678"
		And I follow "Sign in"

	Scenario: Editing a project successfully
		When I go to "ticketee"
		And I go to "Edit project"
		And I fill in "Name" with "Ticketee"
		And I fill in "Description" with "edited description"
		And I follow "Update Project"
		Then I should see "Project updated successfully"
		And I should see "You are viewing project Ticketee"

	Scenario: Editing a project without a name
		When I go to "ticketee"
		And I go to "Edit project"
		And I fill in "Name" with ""
		And I follow "Update Project"
		Then I should see "Name can't be blank"
