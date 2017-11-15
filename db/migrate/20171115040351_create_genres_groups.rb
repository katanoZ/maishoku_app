class CreateGenresGroups < ActiveRecord::Migration[5.1]
  def change
    create_table :genres_groups do |t|
      t.references :genre, foreign_key: true
      t.references :dish, foreign_key: true

      t.timestamps
    end
  end
end
