class CreateScheduleSlots < ActiveRecord::Migration
  def change
    create_table :schedule_slots do |t|
      t.references :schedule
      t.datetime :start_time
      t.datetime :end_time

      t.timestamps null: false
    end
  end
end
