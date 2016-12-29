class CreateWorkouts < ActiveRecord::Migration[5.0]
  def change
    create_table :workouts do |t|
      t.datetime :date
      t.string :workout
      t.string :mood
      t.string :length

      t.timestamps
    end
  end
end
