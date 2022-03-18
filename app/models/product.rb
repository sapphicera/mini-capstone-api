class Product < ApplicationRecord
  validates :name, uniqueness: true, presence: true
  validates :price, presence: true, numericality: { only_integer: true, greater_than_or_equal_to: 0 }
  validates :description, length: { within: 10..500 }

  belongs_to :supplier

  # def supplier
  #   # Supplier.find_by(id: supplier_id)
  #   found_supplier = Supplier.find_by(id: supplier_id)
  #   found_supplier.except(:created_at, :updated_at)
  # end

  def friendly_updated_at
    updated_at.strftime("%A, %d %b %Y %l:%M %p")
  end

  def is_discounted?
    price < 10 ? (return true) : (return false)
  end

  def tax
    (price * 0.09).truncate(2)
  end

  def total
    (price + tax).truncate(2)
  end
end
