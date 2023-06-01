class Island < ApplicationRecord
  belongs_to :user
  has_many_attached :photos
  attribute :latitude, :decimal
  attribute :longitude, :decimal
  attribute :address, :string
  geocoded_by :location
  after_validation :geocode
end
