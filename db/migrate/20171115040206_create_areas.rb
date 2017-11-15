class CreateAreas < ActiveRecord::Migration[5.1]
  def change
    create_table :areas do |t|
      t.string :prefecture
      t.string :city
      t.string :house_number

      t.timestamps
    end
  end
end
