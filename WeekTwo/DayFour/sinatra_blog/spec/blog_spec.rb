require_relative("../lib/blog.rb")

RSpec.describe Blog do
	before(:each) do  
		@blog = Blog.new(...)
end

it("#posts returns list of posts") do  
	expect(@blog.posts).to #??? which matcher or something
	end
end