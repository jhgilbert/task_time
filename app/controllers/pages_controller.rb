class PagesController < ApplicationController
  def home
    @tasks = Task.all    
  end
  
  def start
    task = Task.find(params[:id])
    task.start_time = DateTime.now
    task.running = true
  end
  
  def stop
    task = Task.find(params[:id])
    task.running = false
    task.stop_time = DateTime.now
    time_elapsed = task.stop_time - task.start_time
    task.total_time = task.total_time + time_elapsed  
  end
  
end
