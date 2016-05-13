require 'page-object'
include PageObject::PageFactory


When(/^I want to comment on a post$/) do
  on_page(PostPage) do |page|
  	page.comment_post.click
  end
end

Then(/^I need to fill in some information$/) do
  on_page(CommentPage) do |page|
  	expect(invalid_comment).to include good_comment
  end
end

Then(/^I should be able to send that comment$/) do
	on_page(CommentPage) do |page|
		page.valid_comment.click
	end
end

Then(/^I should be able to read ten descending comment$/) do
  pending # Write code here that turns the phrase above into concrete actions
end