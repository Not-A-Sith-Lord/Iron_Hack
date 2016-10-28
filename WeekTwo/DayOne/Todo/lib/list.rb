
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
            puts "Item in remove_task to search is #{id}"
            puts "Item id is #{item.id}"
    		item.id == id
            
    	}

        puts @tasks
        
    end

    def find_task_by_id(search)
    	result = nil
    	 @tasks.each { |item|
    		if item.id == search
                result = item
    			
    		end
    	}
    	
        result
    end
end
