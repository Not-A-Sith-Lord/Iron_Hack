
class TodoList
    attr_reader :tasks
    def initialize
        @tasks = []
    end

    def add_task(item)
    	@tasks.push(item)
    end

    def remove_task!(id)
    	@tasks.delete_if { |item|
    		item.id == id
    	}
    end

    def find_task_by_id(id)
    	item = nil
    	@tasks.each { |x|
    		if x.id == id
    			item = x
    		end
    	}
    	item

    end
end
