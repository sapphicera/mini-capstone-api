class OrdersController < ApplicationController

  def create
    if current_user.id
      product = Product.find_by(id: params[:product_id])
      order = Order.new(
        user_id: current_user.id,
        product_id: params[:product_id],
        quantity: params[:quantity],
        subtotal: product.price,
        tax: product.tax,
        total: product.total
      )
      order.save ? message = "it worked!!" : message = "IT FAILED MISERABLY"
      render json: {message: message}
    else
      render json: {message: "IT FAILED LOSER"}
    end
  end

  def show
    order = Order.find_by(id: params[:id])
    render json: order.to_json
  end

  def index
    orders = Order.all
    render json: orders.to_json
  end

end