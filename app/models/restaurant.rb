class Restaurant < ApplicationRecord
  has_many :users, through: :cards
  mount_uploader :photo, PhotoUploader

  include PgSearch::Model
  pg_search_scope :global_search,
    against: [ :name, :address ],
    using: {
      tsearch: { prefix: true } # <-- now `superman batm` will return something!
    }
end
