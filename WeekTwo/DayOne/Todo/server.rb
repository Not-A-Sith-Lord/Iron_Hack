require 'sinatra'
require 'sinatra/reloader'
# We're going to need to require our class files
require_relative('lib/list.rb')
require_relative('lib/todo.rb')
task1 = Task.new("First task")
task2 = Task.new("Second task")
list = TodoList.new
list.add_task(task1)
list.add_task(task2)

get "/" do
	erb(:home)
end

get "/tasks" do 
	@tasks = list.tasks
	erb(:task_index)
	end

	get "/new_task" do 
		erb(:new_task)

	end