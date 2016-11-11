# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


userA = User.create!(name:"Johnny Walker", email: "blah@blah.com")
userB = User.create!(name:"Papa John's", email: "blah@blah.com")
userC = User.create!(name:"Alfredo", email: "blah@blah.com")
userD = User.create!(name:"Jake", email: "blah@blah.com")
userE = User.create!(name:"Wendy's", email: "blah@blah.com")

userA.products.create!(title:"cookie0", description: "chocolate chip", deadline: "2016/12/06")
userA.products.create!(title:"cookie1", description: "chocolate chip", deadline: "2016/12/06")
userA.products.create!(title:"cookie2", description: "chocolate chip", deadline: "2016/12/06")
userB.products.create!(title:"cookie3", description: "chocolate chip", deadline: "2016/12/06")
userB.products.create!(title:"cookie4", description: "chocolate chip", deadline: "2016/12/06")
userC.products.create!(title:"cookie5", description: "chocolate chip", deadline: "2016/12/06")