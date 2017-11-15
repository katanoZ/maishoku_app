class CreateOrderDetails < ActiveRecord::Migration[5.1]
  def change
    create_table :order_details do |t|
      t.integer :number
      t.references :order, foreign_key: true
      t.references :dish, foreign_key: true

      t.timestamps
    end
  end
end
