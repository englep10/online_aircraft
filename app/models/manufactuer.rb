class Manufactuer < ActiveRecord::Base
  # what does friendly id do? does it change the routes?
  extend FriendlyId
  friendly_id :manufactuer, use: [:slugged, :finders]
  has_many :aircrafts
end
