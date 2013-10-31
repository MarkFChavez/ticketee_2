Feature: Viewing the project
	In order to view the project
	As a user
	I should sign in first
	
	Background:
		Given I have an account:
			| email			| password		|
			| markchav3z@gmail.com	| 12345678		|
		And I have a project:
			| name			| description			|
			| ticketee		| sample app from book 		|
		And I am on the homepage
		And I fill in "Email" with "markchav3z@gmail.com"
		And I fill in "Password" with "12345678"
		And I follow "Sign in"


	Scenario: When I click on the project from homepage
		When I go to "ticketee"
		Then I should see "You are viewing project ticketee"
		And I should be on "ticketee" page
