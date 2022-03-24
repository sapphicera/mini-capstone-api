class Product < ApplicationRecord
  validates :name, uniqueness: true, presence: true
  validates :price, presence: true, numericality: { only_integer: true, greater_than_or_equal_to: 0 }
  validates :description, length: { within: 10..500 }

  belongs_to :user
  belongs_to :supplier
  has_many :images
  
  has_many :category_products
  has_many :categories, through: :category_products

  def categories
    categories = []
    category_products.each do |cp|
      categories << cp.category
    end
    categories
  end

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
