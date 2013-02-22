class CreateTasks < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
      t.datetime :start_time
      t.datetime :stop_time
      t.boolean :running
      t.integer :total_time

      t.timestamps
    end
  end
end
