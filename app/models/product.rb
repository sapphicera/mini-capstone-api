class Product < ApplicationRecord
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
