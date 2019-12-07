class Card < ApplicationRecord
  belongs_to :user, dependent: :destroy
  belongs_to :restaurant
end
