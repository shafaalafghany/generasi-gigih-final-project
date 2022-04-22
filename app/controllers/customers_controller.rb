class CustomersController < ApplicationController
  def index
    @customer = Customer.all
  end

  def show
    @customer = Customer.find(params[:id])
  end

  def new
    @customer = Customer.new
  end

  def create
    customer = Customer.create(params.require(:customer).permit(:customer_name, :customer_email, :customer_phone, :customer_address))

    redirect_to customers_path
  end
end
