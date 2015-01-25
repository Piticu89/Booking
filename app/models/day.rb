class Day < ActiveRecord::Base
  has_many :bookings, dependent: :destroy
  validates :day, uniqueness: true

end
