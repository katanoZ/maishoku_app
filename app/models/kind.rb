class Kind < ApplicationRecord
  has_many :kinds_groups
  has_many :shops, through: :kinds_groups
  has_many :dishes_groups
  has_many :dishes, through: :dishes_groups
end
