require 'page-object'
include PageObject::PageFactory


When(/^I want to comment on a post$/) do
  on_page(PostPage).comment_post
end

Then(/^I need to fill in the information$/) do
  on_page(CommentPage).valid_comment
end

Then(/^I should be able to send that comment$/) do
  on_page(CommentPage).invalid_comment
end

Then(/^I should be able to read ten descending comment$/) do
  pending # Write code here that turns the phrase above into concrete actions
end