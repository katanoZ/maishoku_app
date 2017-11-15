class Order < ApplicationRecord
  belongs_to :user, optional: true
  belongs_to :shop, optional: true
  has_many :order_details
end
