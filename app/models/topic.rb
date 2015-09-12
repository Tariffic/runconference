class Topic < ActiveRecord::Base
  belongs_to :conference
  belongs_to :schedule_slot
end
