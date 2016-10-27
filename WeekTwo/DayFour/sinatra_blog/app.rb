require "sinatra"

require_relative "lib/blog.rb"
require_relative "lib/post.rb"

blog = Blog.new("Milk and Steak: A Connoisseur's Blog")
blog.add_post Post.new(...)
blog.add_post Post.new(...)

get "/" do
	@posts = blog.posts
	erb(:home)
end
