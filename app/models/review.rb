class Review < ActiveRecord::Base
  belongs_to :aircraft
  belongs_to :user
end
