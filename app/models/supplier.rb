class Supplier < ApplicationRecord
  has_many :products
  
  # def products
  #   # Product.where(supplier_id: id)
  #   product_list = Product.where(supplier_id: id)
  #   product_list.map{|product| product.name}
  # end

end