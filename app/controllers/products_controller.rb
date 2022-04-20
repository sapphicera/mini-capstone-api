class ProductsController < ApplicationController
  before_action :authenticate_admin, only: [:create, :update, :destroy]

  def index
    # category = Category.find_by(name: params[:category])
    # @products = category.products
    @products = Product.all

    if params[:simple]
      render template: "products/simple_index"
    else
      render template: "products/index"
    end
  end

  def show
    @product = Product.find_by(id: params[:id])
    render template: "products/show"
  end

  def create
    @product = Product.new(
      name: params[:name],
      price: params[:price],
      description: params[:description],
      stock: params[:stock],
      supplier_id: params[:supplier_id],
      user_id: current_user.id
    )

    if @product.save
      # params[:input_images].each{|image| Image.create(url: image, product_id: @product.id)}
      render template: "products/show"
    else
      render json: {errors: @product.errors.full_messages}, status: 422
    end
  end

  def update
    @product = Product.find_by(id: params[:id])
    @product.name = params[:name] || @product.name
    @product.price = params[:price] || @product.price
    @product.description = params[:description] || @product.description
    @product.supplier_id = params[:supplier_id] || @product.supplier_id
    @product.stock = params[:stock] || @product.stock

    if @product.save
      render template: "products/show"
    else
      render json: {errors: @product.errors.full_messages}, status: 422
    end
  end

  def destroy
    product = Product.find_by(id: params[:id])

    if Product.exists?(params[:id])
      product.destroy
      message = "product deleted"
    else
      message = "doesn't exist"
    end

    render json: {message: message}
  end

  def multidelete
    params[:products].each do |product_name|
      product = Product.find_by(name: product_name)
      product.destroy
    end
    render json: {message: "in multidelete"}
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