class Restaurant < ApplicationRecord
  has_many :users, through: cards
end
