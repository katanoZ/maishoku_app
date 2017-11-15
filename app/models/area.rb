class Area < ApplicationRecord
  has_many :shops, through: :areas_groups
  has_many :areas_groups
end
