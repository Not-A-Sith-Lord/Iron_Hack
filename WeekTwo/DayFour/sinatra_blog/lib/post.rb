class Post
	attr_accessor :title, :date, :content
	def initialize(title, content)
		@date = Time.now
		@title = title
		@content = content

	end

end