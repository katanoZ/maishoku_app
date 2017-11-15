class CreateKindsGroups < ActiveRecord::Migration[5.1]
  def change
    create_table :kinds_groups do |t|
      t.references :kind, foreign_key: true
      t.references :shop, foreign_key: true

      t.timestamps
    end
  end
end
