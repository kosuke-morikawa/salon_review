class BeautyShop < ApplicationRecord
  has_many :reviews, dependent: :destroy
end
