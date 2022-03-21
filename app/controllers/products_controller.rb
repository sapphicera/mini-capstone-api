class ProductsController < ApplicationController
  def index
    pp "current_user"
    pp current_user
    pp "/current_user"

    @products = current_user.products
    # @products = Product.all
    render template: "products/index"
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
      params[:input_images].each{|image| Image.create(url: image, product_id: @product.id)}
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
    @product.supplier_id = params[:supplier] || @product.supplier_id
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

  # def query_display_id
  #   product = Product.find_by({id: params[:id]})
  #   render json: product.as_json
  # end

  # def segment_display_name
  #   product = Product.find_by({name: params[:search]})
  #   render json: product.as_json
  # end
end