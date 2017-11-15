class RenameNumberToQuantity < ActiveRecord::Migration[5.1]
  def change
    rename_column :order_details, :number, :quantity 
  end
end
