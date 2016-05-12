require 'page-object'

class PostPage
  include PageObject
  include DataMagic

  text_field(:title, name: 'title')
  text_field(:name, name: 'name')
  text_field(:content, name: 'post_stuff')
  button(:post, name: 'post')
  button(:post, name: 'comment')
  
  def valid_post
  	populate_page_with data_for :good_post
  	self.post
  end

  def invalid_post
  	populate_page_with data_for :bad_post
  	self.post
  end

  def show_post
  	@browser.title.click
  end

  def comment_post
  	self.comment
  end

  # def num_posts
  # 	posts = 0
  # 	while posts <= 10
  # 		posts++
  # 	end
  # end
end