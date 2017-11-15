class Genre < ApplicationRecord
  has_many :dishes, through: :genres_groups
  has_many :genres_groups
end
