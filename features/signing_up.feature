Feature: User sign up
	In order to use the application
	As a visitor
	I should sign up first

	Background:
		Given I am on the homepage
		When I go to "Sign up"

	Scenario: Registering with valid data
		When I fill in "Email" with "user@example.com"
		And I fill in "Password" with "12345678"
		And I fill in "Password confirmation" with "12345678"
		And I follow "Sign up"
		Then I should see "Welcome user@example.com"

	Scenario: Registering with invalid data
		When I fill in "Email" with "user@example.com"
		And I fill in "Password" with "mypassword"
		And I fill in "Password confirmation" with "12345678"
		And I follow "Sign up"
		Then I should see "error prohibited"

	Scenario: Registering with an already used email
		And I have an account with email "user@example.com" and password "12345678"
		When I fill in "Email" with "user@example.com"
		And I fill in "Password" with "markchavezpassword"
		And I fill in "Password confirmation" with "markchavezpassword"
		And I follow "Sign up"
		Then I should see "error prohibited"
