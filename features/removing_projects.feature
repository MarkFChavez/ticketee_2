Feature: Removing a project
	In order to remove a project
	As a user
	I want to be able to remove my own projects

	Scenario: Remove project
		Given I have an account:
			| email			| password			|
			| markchav3z@gmail.com	| 12345678			|
		And I have a project:
			| name			| description			|
			| Ticketee		| a sample project		|
		And I am on the homepage
		When I fill in "Email" with "markchav3z@gmail.com"
		And I fill in "Password" with "12345678"
		And I follow "Sign in"
		And I go to "Ticketee"
		And I go to "Remove project"
		Then I should see "Project removed successfully"
		And I should not see "Ticketee"
