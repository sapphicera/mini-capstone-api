class User < ApplicationRecord
  has_secure_password
  validates :email, presence: true, uniqueness: true
  has_many :products
  has_many :orders
  
  has_many :products, through :carted_products
end
