# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

projectA = Project.create!(name: "Ironhack")
projectB = Project.create!(name: "Ironhack2", description: "boosh")
projectC = Project.create!(name: "Ironhack2", description: "booshy")
projectD = Project.create!(name: "Ironhack2", description: "I like stuff")
projectE = Project.create!(name: "Ironhack2", description: "Tralalalalalala")
projectF = Project.create!(name: "Ironhack2", description: "BEEEEEEEEEEEEEEEEEEP")
projectG = Project.create!(name: "Ironhack2", description: "Elon Musk")
projectH = Project.create!(name: "Ironhack2", description: "Cuz Nizar said so")
projectI = Project.create!(name: "Ironhack2", description: "Notorious NIZ")
projectJ = Project.create!(name: "Ironhack2", description: "Baaaaaam")


TimeEntry.create!(hours: 2, minutes: 36, comments: "blah", date: Date.today, project_id: projectA.id)
projectA.time_entries.create!(hours: 2, minutes: 372, comments: "ccjc", date: Date.today)
projectB.time_entries.create!(hours: 2, minutes: 372, comments: "ccjc", date: Date.today)
projectC.time_entries.create!(hours: 2, minutes: 372, comments: "ccjc", date: Date.today)
projectD.time_entries.create!(hours: 2, minutes: 372, comments: "ccjc", date: Date.today)
projectE.time_entries.create!(hours: 2, minutes: 372, comments: "ccjc", date: Date.today)

projectA.time_entries.create!(hours: 5, minutes: 8, comments: "cuz nizar said so", date: Date.today)
projectC.time_entries.create!(hours: 9, minutes: 90, comments: "jgji", date: Date.today)
projectC.time_entries.create!(hours: 3, minutes: 37, comments: "atlanta company", date: Date.today)
projectD.time_entries.create!(hours: 6, minutes: 32, comments: "something", date: Date.today)
projectF.time_entries.create!(hours: 2, minutes: 72, comments: "ccjc", date: Date.today)

