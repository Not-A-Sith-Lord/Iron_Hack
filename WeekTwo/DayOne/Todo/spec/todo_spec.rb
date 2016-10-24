
require_relative("../lib/todo.rb")
require_relative("../lib/list.rb")

RSpec.describe "Todo functions" do 
	task = Task.new("my example task")
	task1 = Task.new("my example task")
	list = TodoList.new
	

	it "Incrementing task numbers" do
		expect((task.id - task1.id).abs).to eq(1)
	end

	it "new task is uncompleted (default)" do
		expect(task.complete?).to eq(false)
		expect(task1.complete?).to eq(false)
	end

	it "calling complete! changes task status to complete" do
		expect(task.complete!).to eq(true)
		expect(task.complete?).to eq(true)
	end

	it "calling incomplete! changes item status to incomplete" do
		expect(task.incomplete!).to eq(false)
		expect(task.complete?).to eq(false)
	end

	it "calling a change in task content" do
		expect(task.content).to eq("my example task")
		task.update_content!("Blag blag blag")
		expect(task.content).to eq("Blag blag blag")
	end

	describe "Now tests for the list of tasks" do
		
		it "Check if list is adding tasks" do
			list.add_task(task)
			expect(list.tasks).to eq([task])
			list.add_task(task1)
			expect(list.tasks).to eq([task, task1])
		end

		 it "Check if task is removed by id" do
		 	expect(list.remove_task!(2)).to eq([task])
		 end

		  it "Check if find task works by ID" do
		  	example = list.find_task_by_id(1)
		 	expect(example.content).to eq("Blag blag blag")
		 end

	end

end