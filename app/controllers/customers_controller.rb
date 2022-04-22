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
    puts 
    customer = Customer.create(params.require(:customer).permit(:customer_name, :customer_email, :customer_phone, :customer_address))
    if customer.valid?
      redirect_to customers_path
    else
      redirect_to '/customers/new'
    end
  end
end
