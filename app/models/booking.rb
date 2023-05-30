class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :island
  validates :start_date, presence: true
end
