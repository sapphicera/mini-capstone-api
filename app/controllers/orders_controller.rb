class OrdersController < ApplicationController

  def create
    if current_user.nil?
      render json: {message: "IT FAILED LOSER"}
    else
      order = Order.new(
        user_id: params[:user_id],
        product_id: params[:product_id],
        quantity: params[:quantity],
        subtotal: params[:subtotal],
        tax: params[:tax],
        total: params[:total]
      )
      order.save ? message = "it worked!!" : message = "IT FAILED MISERABLY"
      render json: {message: message}
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
