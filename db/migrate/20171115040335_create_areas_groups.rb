class CreateAreasGroups < ActiveRecord::Migration[5.1]
  def change
    create_table :areas_groups do |t|
      t.references :area, foreign_key: true
      t.references :shop, foreign_key: true

      t.timestamps
    end
  end
end
