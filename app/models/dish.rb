class Dish < ApplicationRecord
  belongs_to :shop, optional: true
  has_many :order_details
  has_many :genres_groups
  has_many :genres, through: :genres_groups
  has_many :dishes_groups
  has_many :kinds, through: :dishes_groups
end
