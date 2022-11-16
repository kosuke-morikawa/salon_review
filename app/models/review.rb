class Review < ApplicationRecord
  belongs_to :user
  belongs_to :beauty_shop
end
