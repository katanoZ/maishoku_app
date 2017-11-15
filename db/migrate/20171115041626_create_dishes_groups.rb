class CreateDishesGroups < ActiveRecord::Migration[5.1]
  def change
    create_table :dishes_groups do |t|
      t.references :dish, foreign_key: true
      t.references :kind, foreign_key: true

      t.timestamps
    end
  end
end
