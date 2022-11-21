class CreateTasks < ActiveRecord::Migration[7.0]
  def change
    create_table :tasks do |t|
      t.integer :screen
      t.integer :velocity_mode
      t.float :current_velocity
      t.float :current_distance
      t.float :partial_distance
      t.boolean :cruise_mode_on
      t.float :cruising_speed
      t.float :perimeter
      t.float :max_velocity
      t.float :curve_amplitude

      t.timestamps
    end
  end
end
