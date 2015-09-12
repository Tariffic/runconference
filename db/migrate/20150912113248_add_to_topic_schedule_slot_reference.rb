class AddToTopicScheduleSlotReference < ActiveRecord::Migration
  def change
    add_reference :topics, :schedule_slots, index: true, foreign_key: true
  end
end
