require 'page-object'

class BlogPage
  include PageObject

  page_url "localhost:4567/blog"

  button(:create, name: 'create_post')

  def new_post
  	self.create_post
  end

end