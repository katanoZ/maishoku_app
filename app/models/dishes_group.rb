class DishesGroup < ApplicationRecord
  belongs_to :dish
  belongs_to :kind
end
