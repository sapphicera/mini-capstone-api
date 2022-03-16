class UpdateDatatypesAddInventory < ActiveRecord::Migration[7.0]
  def change
    # description: change from string to text
    change_column :products, :description, :text
    # price: change from integer to decimal
    change_column :products, :price, "numeric USING CAST(price AS numeric)"
    change_column :products, :price, :decimal, precision: 9, scale: 2
    # add attribute to keep track of item inventory for each product
    add_column :products, :inventory, :integer
  end
end
