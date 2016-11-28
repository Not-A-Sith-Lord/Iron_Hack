# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.create(username: 'Ignacio', email: 'hola@ignaciovaldes.me', password: "whatever", password_confirmation: "whatever", role: "admin")
User.create(username: 'Alexandra', email: 'alechen04@gmail.com', password: "whatever", password_confirmation: "whatever", role: "admin")
User.create(username: 'Aram', email: 'aram@berkeley.edu', password: "whatever", password_confirmation: "whatever", role: "admin")
User.create(username: 'Maria', email: 'unamaria@gmail.com', password: "whatever", password_confirmation: "whatever", role: "admin")