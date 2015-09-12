class CreateSchedules < ActiveRecord::Migration
  def change
    create_table :schedules do |t|
      t.references :conference

      t.timestamps null: false
    end
  end
end
