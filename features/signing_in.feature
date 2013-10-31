Feature: User sign in
	In order to use the application
	As a user
	I should sign in

	Background:
		Given I have an account:
			| email			| password		|
			| user@example.com	| 12345678		|
		And I am on the homepage

	Scenario: Signing in with valid credentials
		When I fill in "Email" with "user@example.com"
		And I fill in "Password" with "12345678"
		And I follow "Sign in"
		Then I should see "Welcome user@example.com"

	Scenario: Signing in with invalid credentials
		When I fill in "Email" with "user@example.com"
		And I fill in "Password" with "wrongpassword"
		And I follow "Sign in"
		Then I should see "Invalid email or password"

	Scenario: Logging out of the application
		When I fill in "Email" with "user@example.com"
		And I fill in "Password" with "12345678"
		And I follow "Sign in"
		And I go to "Logout"
		Then I must be on the login page
