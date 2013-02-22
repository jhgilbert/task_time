class CreateTasks < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
      t.string :name
      t.datetime :start_time
      t.datetime :stop_time
      t.boolean :running, :default => false
      t.integer :total_time, :default => 0

      t.timestamps
    end
  end
end
