class UpdatePriceRenameInventory < ActiveRecord::Migration[7.0]
  def change
    #int to decimal
    change_column :products, :price, "numeric USING CAST(price AS numeric)"
    change_column :products, :price, :decimal, precision: 9, scale: 2

    #rename column
    rename_column :products, :inventory, :stock  
  end
end
