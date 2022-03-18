class SuppliersController < ApplicationController
  def index
    @suppliers = Supplier.all
    render template: "suppliers/index"
  end

  def show
    @supplier = Supplier.find_by(id: params[:id])
    render template: "suppliers/show"
  end

  def create
    @supplier = Supplier.new(
      name: params[:name],
      email: params[:email],
      phone: params[:phone]
    )
    @supplier.save
    render template: "suppliers/show"
  end

  def update
    @supplier = Supplier.find_by(id: params[:id])
    @supplier.name = params[:name] || @supplier.name
    @supplier.email = params[:email] || @supplier.email
    @supplier.phone = params[:phone] || @supplier.phone
    @supplier.save

    render template: "suppliers/show"
  end

  def destroy
    supplier = Supplier.find_by(id: params[:id])

    if Supplier.exists?(params[:id])
      supplier.destroy
      message = "supplier deleted"
    else
      message = "doesn't exist"
    end

    render json: {message: message}
  end
end
