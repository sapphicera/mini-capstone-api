class ProductsController < ApplicationController
  def products
    product = Product.all
    render json: product.as_json
  end

  def gatorade
    product = Product.find_by({name: "Gatorade"})
    render json: product.as_json
  end

  def kitkat
    product = Product.find_by({name: "Kit Kat"})
    render json: product.as_json
  end

  def macncheese
    product = Product.find_by({name: "Kraft Macaroni & Cheese"})
    render json: product.as_json
  end
end
