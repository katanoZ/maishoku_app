class CreateDishes < ActiveRecord::Migration[5.1]
  def change
    create_table :dishes do |t|
      t.string :name
      t.text :content
      t.integer :price
      t.references :shop, foreign_key: true

      t.timestamps
    end
  end
end
