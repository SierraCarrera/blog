require 'sinatra'
require 'slim'

get '/blog' do 
	slim :index
end

post '/blog/newpost' do
	slim :newpost
end

post '/blog/posts' do
	name = params[:name]
	title = params[:title]
	post = params[:post_stuff]
	slim :post, {}, {name: name, title: title, post: post}
end

get '/blog/newcomment' do
	slim :newcomments
end

post '/blog/comments' do
	name = params[:name]
	comment = params[:comment_stuff]
	slim :comment, {}, {name: name, comment: comment}
end

