class ScheduleSlot < ActiveRecord::Base
  belongs_to :schedule
  has_one :topic
end
