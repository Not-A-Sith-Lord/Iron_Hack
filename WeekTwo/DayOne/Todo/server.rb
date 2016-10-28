require 'sinatra'
require 'sinatra/reloader'
# We're going to need to require our class files
require_relative('lib/list.rb')
require_relative('lib/todo.rb')
list = TodoList.new



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

post "/create_task" do 
	list.add_task(params[:task_name] = Task.new(params[:task_content]))

	redirect to ("/tasks")
	
end

post "/delete_task" do 
	puts "BANANA"
	puts list.tasks
 
	 params[:to_remove].each do |id|
	 
		list.remove_task!(id.to_i)
	end

 
	redirect to ("/tasks")
	end