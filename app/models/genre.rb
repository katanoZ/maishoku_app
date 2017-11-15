class Genre < ApplicationRecord
  has_many :genres_groups
  has_many :dishes, through: :genres_groups
end
