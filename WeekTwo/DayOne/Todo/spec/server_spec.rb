require_relative('../server.rb')

RSpec.describe "Server stuff" do 

task1 = Task.new("First task")
task2 = Task.new("Second task")
list = TodoList.new
list.add_task(task1)
list.add_task(task2)

	it "Can pull posts from todo list to display" do 
		@tasks = list.tasks
		expect(@tasks).to eq([task1, task2])

	end


	end 