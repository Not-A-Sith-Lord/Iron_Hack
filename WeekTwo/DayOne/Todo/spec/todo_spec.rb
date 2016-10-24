
require_relative("../lib/todo.rb")

RSpec.describe "Todo functions" do 
	task = Task.new("my example task")

	it "Incrementing task numbers" do
		expect(task.id).to eq(1)
	
	end

end