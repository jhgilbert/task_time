class Task < ActiveRecord::Base
  attr_accessible :name, :running, :start_time, :stop_time, :total_time
end
