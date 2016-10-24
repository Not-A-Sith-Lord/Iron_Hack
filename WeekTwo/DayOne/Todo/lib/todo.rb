class Task
    attr_reader :content, :id, :complete, :created_at, :updated_at
    @@current_id = 1

    def initialize(content)
        @content = content
        @id = @@current_id
        @@current_id += 1
        @complete = false
        @created_at = Time.now
        @updated_at = nil
    end

    def complete?
    	@complete
    end

    def complete!
    	@complete = true
    end

    def incomplete!
    	@complete = false
    end

    def created_at 
    	@created_at
    end
    
    def update_content!(task)
    	@content = task
    	@updated_at = Time.now
    end


end
