class OrdersController < ApplicationController

  def create
    # if current_user.id
    #   product = Product.find_by(id: params[:product_id])
    #   order = Order.new(
    #     user_id: current_user.id,
    #     product_id: params[:product_id],
    #     quantity: params[:quantity],
    #     subtotal: product.price,
    #     tax: product.tax,
    #     total: product.total
    #   )
    #   order.save ? message = "it worked!!" : message = "IT FAILED MISERABLY"
    #   render json: {message: message}
    # else
    #   render json: {message: "IT FAILED LOSER"}
    # end

    product = Product.find_by(id:params[:product_id])
    calculated_subtotal = params[:quantity].to_i * product.price
    calculated_tax = calculated_subtotal * 0.09
    calculated_total = calculated_subtotal + calculated_tax

    @order = Order.new(
    user_id: current_user.id,
    product_id: params[:product_id],
    quantity: params[:quantity],
    subtotal: calculated_subtotal,
    tax: calculated_tax,
    total: calculated_total
    )

    @order.save ? (message = "it worked!!") : (message = "IT FAILED MISERABLY")
    render template: "orders/show"
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
    @orders = Order.where(user_id: current_user.id)
    if @orders != nil
      render template: "orders/index"
    else
      render json: {}, status: :unauthorized
    end
  end

end