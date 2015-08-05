class Manufactuer < ActiveRecord::Base
  extend FriendlyId
  friendly_id :manufactuer, use: [:slugged, :finders]
  has_many :aircrafts
end
