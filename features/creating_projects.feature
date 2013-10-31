Feature: Creating a project
	In order to create a new project
	As a user
	I should be signed in

	Background:
		Given I have an account:
			| email			| password		|
			| markchav3z@gmail.com	| 12345678		|
		And I am on the homepage
		And I fill in "Email" with "markchav3z@gmail.com"
		And I fill in "Password" with "12345678"
		And I follow "Sign in"

	Scenario: I create a project successfully
		When I go to "New Project"
		And I fill in "Name" with "Sample project"
		And I fill in "Description" with "this is a sample project"
		And I follow "Create Project"
		Then I should see "Project created successfully"

	Scenario: I create a project with no name
		When I go to "New Project"
		And I fill in "Description" with "this project has no name"
		And I follow "Create Project"
		Then I should see "Name can't be blank"

	Scenario: I create a project with name already existing
		Given I have a project:
			| name			| description			|
			| sample project	| this is already taken		|
		When I go to "New Project"
		And I fill in "Name" with "sample project"
		And I fill in "Description" with "this is ok"
		And I follow "Create Project"
		Then I should see "Name has already been taken"

