class Aircraft < ActiveRecord::Base
  belongs_to :manufactuer

  has_many :watchlists
  has_many :users, through: :watchlists

  extend FriendlyId
  friendly_id :serial_number, use: [:slugged, :finders]
  has_attached_file :image, :styles => { :medium => "300x300>", :thumb => "100x100>" }
  validates_attachment_content_type :image, :content_type => /\Aimage\/.*\Z/
end
