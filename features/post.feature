Feature: Posting to the blog
As a blogger
I want to share my thoughts with the world
so that everyone knows how brilliant I am
	
	Scenario: Seeing the blog content
        When I go to the blog
        Then I want to create a post


	Scenario: Creating a post
		When I want to create a post
		Then I need to fill in the information


    Scenario: Reading a post
        When I go to a post 
        Then I want to see all the details of said post