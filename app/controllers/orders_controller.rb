class OrdersController < ApplicationController
  before_action :authenticate_user

  def create
    carted_products = CartedProduct.where(user_id: current_user.id, status: "carted")
    calculated_subtotal = 0

    carted_products.each do |cp|
      calculated_subtotal += (cp.product.price * cp.quantity)
    end

    calculated_tax = calculated_subtotal * 0.09
    calculated_total = calculated_subtotal + calculated_tax

    @order = Order.new(
    user_id: current_user.id,
    subtotal: calculated_subtotal,
    tax: calculated_tax,
    total: calculated_total
    )

    carted_products.each do |cp|
      cp.status = "purchased"
      cp.order_id = @order.id
      cp.save
    end

    @order.save
    render json: {message: "SAVED SUCCESSFULLY"}
    # render template: "orders/show"
  end

  def show
    @order = Order.find_by(id: params[:id])
    if @order.user_id == current_user.id
      render template: "orders/show"
    else
      render json: {}, status: :unauthorized
    end
  end

  def index
    @orders = current_user.orders
    render template: "orders/index"
  end

end