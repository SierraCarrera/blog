require 'page-object'

class PostPage
  include PageObject
  include DataMagic

  text_field(:name, name: 'name')
  text_field(:content, name: 'comment_stuff')
  button(:post, name: 'comment')


  def valid_comment
  	populate_page_with data_for :good_comment
  	self.post
  end

  def invalid_comment
  	populate_page_with data_for :bad_comment
  	self.post
  end
  
  # def num_comments
  # 	comments = 0
  # 	do while comments <= 10
  # 		comments++
  # 	end
  # end

end