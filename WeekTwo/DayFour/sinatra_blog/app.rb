require "sinatra"

require_relative "lib/blog.rb"
require_relative "lib/post.rb"

blog = Blog.new("Milk and Steak")
blog.add_post Post.new("My First Post", "AYYYYYYYY LOOK AT ME IM TYPING")
blog.add_post Post.new("My First Post", "AYYYYYYYY LOOK AT ME IM TYPING")

get "/" do
	 @blog = blog
	 puts "banana"
	 puts @blog.posts
	 puts @blog.sorted_posts
	erb(:home)
end

get "/posts_details/:id" do 
	
end