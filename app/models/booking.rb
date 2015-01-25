class Booking < ActiveRecord::Base
  belongs_to :day
  validates :day_id, presence: true
  validates :start, :end, :overlap => true
end
