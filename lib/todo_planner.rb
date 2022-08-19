class TodoPlanner
    def initialize(name)
        @name=name
        @task = []
    end
    def add_tasks(task)
       
        
        @task << task if !task.empty?

    end

    def view_tasks
        #binding.irb

        fail "No tasks added" if @task.empty?
        task = @task.uniq.join(", ")
        return "#{@name} you have tasks : #{task}"
    end
end