require 'page-object'
include PageObject::PageFactory


When(/^I go to the blog$/) do
  visit_page(BlogPage)
end

Then(/^I want to create a post$/) do
  on_page(BlogPage) do |page|
  	page.new_post.click
  end
end

Then(/^I need to fill in the information$/) do
  on_page(PostPage) do |page|
  	page.valid_post.click
  end
end

When(/^I go to a post$/) do
  on_page(PostPage) do |page|
  	
  end
end

Then(/^I want to see all the details of said post$/) do
  pending # Write code here that turns the phrase above into concrete actions
end