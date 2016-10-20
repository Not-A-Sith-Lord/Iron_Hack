require_relative("classes.rb")


blog = Blog.new
ariel = Post.new("post 1", Time.now, "hvnsodufhsudfh", false)
bob = Post.new("post 2", "10/8", "hvnsodufhsudfh", false)
jake = Post.new("post 3", "10/9", "hvnsodufhsudfh", true)
sam = Post.new("post 4", "10/28", "hvnsodufhsudfh", false)
sam1 = Post.new("post 5", "10/28", "hvnsodufhsudfh", false)
sam2 = Post.new("post 6", "10/28", "hvnsodufhsudfh", false)
sam3 = Post.new("post 7", "10/28", "hvnsodufhsudfh", false)
sam4 = Post.new("post 8", "10/28", "hvnsodufhsudfh", false)
sam5 = Post.new("post 9", "10/28", "hvnsodufhsudfh", false)
sam6 = Post.new("post 10", "10/28", "hvnsodufhsudfh", false)

blog.add_post(ariel)
blog.add_post(bob)
blog.add_post(jake)
blog.add_post(sam)
blog.add_post(sam1)
blog.add_post(sam2)
blog.add_post(sam3)
blog.add_post(sam4)
blog.add_post(sam5)
blog.add_post(sam6)

blog.add_post Post.new("post 11", "10/28", "hvnsodufhsudfh", false)


blog.publish_posts