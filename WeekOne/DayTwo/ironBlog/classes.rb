
class Blog
	attr_reader :posts

	def initialize
		@posts = []
	end

	def add_post(post)
		@posts.push(post)
	end

	def publish_posts
		puts " "
		if @posts.length < 4
			@posts.each { |post| 

			if post.sponsored == true
					puts " "
				puts "********* #{post.title} **********"
				puts post.date
				puts "*************************"
				puts post.text
				puts "-------------------------"
			else
				puts " "
				puts post.title
				puts post.date
				puts "*************************"
				puts post.text
				puts "-------------------------"
			end
			puts "first logic branch"
						}
		else 
			i = 0
			count = 3
			page = 1
			 while i < count

			 	if posts[i].sponsored == true
					puts " "
				puts "********* #{posts[i].title} **********"
				puts posts[i].date
				puts "*************************"
				puts posts[i].text
				puts "-------------------------"
				else
				puts " "
				puts posts[i].title
				puts posts[i].date
				puts "*************************"
				puts posts[i].text
				puts "-------------------------"
				end
				i += 1

			 end
			 puts "page #{page}"
			 puts "__________________________________"

			 
			 input = nil


			 while input != 'exit'
			 	 puts "Type 'next' or 'prev' or 'exit'"
			 	 input = gets.chomp

			 	 	if input == "next"
			 	 		puts "posts length is #{posts.length}"
			 	 		puts "count is #{count}"

			 	 		# if count > posts.length
			 	 		# 	break

			 	 		count = count + 3
			 	 		page = page + 1
			 	 		while i < count

					 	if posts[i].sponsored == true
							puts " "
						puts "********* #{posts[i].title} **********"
						puts posts[i].date
						puts "*************************"
						puts posts[i].text
						puts "-------------------------"
						else
						puts " "
						puts posts[i].title
						puts posts[i].date
						puts "*************************"
						puts posts[i].text
						puts "-------------------------"
						end
						i += 1

			 	 		end
			 	 		puts "Page #{page}"
			 	 		puts "___________________________________"

					 
					elsif input == "prev"
						count = count - 3
						i = i - 6
						page = page - 1
						puts "count is #{count}"
						puts "i is #{i}"
						while i < count

					 	if posts[i].sponsored == true
							puts " "
						puts "********* #{posts[i].title} **********"
						puts posts[i].date
						puts "*************************"
						puts posts[i].text
						puts "-------------------------"
						else
						puts " "
						puts posts[i].title
						puts posts[i].date
						puts "*************************"
						puts posts[i].text
						puts "-------------------------"
						end
						i += 1

			 	 		end
			 	 		puts "Page #{page}"
			 	 		puts "___________________________________"
			 	 	# end
			 	 	end
			


			end


end
		
	end

end

class Post
	attr_reader :title, :date, :text, :sponsored
	def initialize(title, date, text, sponsored)
		@title = title
		@date = date
		@text = text
		@sponsored = sponsored
	end
end 