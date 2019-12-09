class Restaurant < ApplicationRecord
  has_many :users, through: :cards
  mount_uploader :photo, PhotoUploader
end
