require "todo_plan_complete" 

RSpec.describe TodoPlanner do

    context "when no tasks are added" do
        it "fails with exception" do
            planner = TodoPlanner.new("Rex")
            planner.add_tasks("")
            expect{planner.view_tasks}.to raise_error  "No tasks added"
        end
    end

    context "when single tasks is added" do
        it "lists the task" do
            planner = TodoPlanner.new("Rex")
            planner.add_tasks("work1")
            expect(planner.view_tasks).to eq "Rex you have tasks : work1"
        end
    end  
    
    context "when multiple tasks are added" do
        it "lists all the task" do
            planner = TodoPlanner.new("Rex")
            planner.add_tasks("work1")
            planner.add_tasks("work2") 
            planner.add_tasks("work3")  
            expect(planner.view_tasks).to eq "Rex you have tasks : work1, work2, work3"
        end
    end 

    context "when ame task is repeted multiple temes" do
        it "lists the repeated task only once" do
            planner = TodoPlanner.new("Rex")
            planner.add_tasks("work1")
            planner.add_tasks("work2") 
            planner.add_tasks("work2")  
            expect(planner.view_tasks).to eq "Rex you have tasks : work1, work2"
        end
    end 

    context "when task is completed remove from list" do
        it "lists the repeated task only once" do
            planner = TodoPlanner.new("Rex")
            planner.add_tasks("work1")
            planner.add_tasks("work2") 
            planner.complete_tasks("work1")  
            expect(planner.view_tasks).to eq "Rex you have tasks : work2"
        end
    end
    
    context "when non existant task is marked complete" do
        it "return task not found" do
            planner = TodoPlanner.new("Rex")
            planner.add_tasks("work1")
            planner.add_tasks("work2") 
            expect(planner.complete_tasks("work3")).to eq "Task work3 not found"
        end
    end 
end