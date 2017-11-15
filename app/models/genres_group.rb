class GenresGroup < ApplicationRecord
  belongs_to :genre
  belongs_to :dish
end
