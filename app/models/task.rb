class Task < ActiveRecord::Base
  attr_accessible :running, :start_time, :stop_time, :total_time
end
