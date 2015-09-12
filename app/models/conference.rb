class Conference < ActiveRecord::Base
  has_many :schedules
  has_many :topics
end
