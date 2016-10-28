
class Blog
	attr_accessor :name, :posts
def initialize(name)
	@name = name
	@posts = []
	
end

def add_post(post)
	@posts.push(post)
end

def latest_posts
	sorted_posts = @posts.sort { |x,y|
		x.date <=> y.date
	}

	sorted_posts
end

end
