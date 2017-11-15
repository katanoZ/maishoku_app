class Shop < ApplicationRecord
  has_many :dishes
  has_many :orders
  has_many :areas_groups
  has_many :areas, through: :areas_groups
  has_many :kinds_groups
  has_many :kinds, through: :kinds_groups
end
