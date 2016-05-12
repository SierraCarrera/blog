require 'page-object'
include PageObject::PageFactory


When(/^I go to the blog$/) do
  visit_page(BlogPage)
end

Then(/^I want to create a post$/) do
  on_page(BlogPage).new_post
end

Then(/^I need to fill in the information$/) do
  on_page(PostPage).valid_post
end

When(/^I go to a post$/) do
  on_page(PostPage)
end

Then(/^I want to see all the details of said post$/) do
  pending # Write code here that turns the phrase above into concrete actions
end