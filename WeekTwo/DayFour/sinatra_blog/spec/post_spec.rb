require_relative("../lib/post.rb")

RSpec.describe Post do 
	before(:each) do 
		@post1 = Post.new(...)
		@post2 = Post.new(...)
	end

	it("#title returns title") do 
		expect(@post1.title).to != nil
		expect(@post1.title).to != nil
	end

	it("date returns date") do 
	end

	it("#text returns text") do 
	end
end
