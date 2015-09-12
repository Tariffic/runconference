class Schedule < ActiveRecord::Base
  has_many :schedule_slots
  belongs_to :conference
end
