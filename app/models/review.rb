class Review < ApplicationRecord
  belongs_to :user
  belongs_to :beauty_shop
  validates :score, presence: true
end
