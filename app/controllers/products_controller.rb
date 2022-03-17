class ProductsController < ApplicationController
  def index
    @products = Product.all
    render template: "products/index"
  end

  def show
    @product = Product.find_by(id: params[:id])
    render template: "products/show"
  end

  def create
    @product = Product.new(
      name: params[:name],
      image_url: params[:image_url],
      price: params[:price],
      description: params[:description],
      stock: params[:stock]
    )

    if @product.save
      render template: "products/show"
    else
      render json: {errors: @product.errors.full_messages}, status: 422
    end
  end

  def update
    @product = Product.find_by(id: params[:id])
    @product.name = params[:name] || @product.name
    @product.image_url = params[:image_url] || @product.image_url
    @product.price = params[:price] || @product.price
    @product.description = params[:description] || @product.description
    @product.stock = params[:stock] || @product.stock

    if @product.save
      render template: "products/show"
    else
      render json: {errors: @product.errors.full_messages}, status: 422
    end
  end

  def destroy
    product = Product.find_by(id: params[:id])

    Product.exists?(params[:id]) ? (product.destroy; message = "product deleted") : (message = "doesn't exist")

    render json: {message: message}
  end

  # def query_display_id
  #   product = Product.find_by({id: params[:id]})
  #   render json: product.as_json
  # end

  # def segment_display_name
  #   product = Product.find_by({name: params[:search]})
  #   render json: product.as_json
  # end
end