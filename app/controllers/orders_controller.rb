class OrdersController < ApplicationController
  def index
    @order = Order.all
  end

  def show
  end

  def new
    @order = Order.new
  end

  def edit
    @order = Order.find(params[:id])
  end

  def create
    today = Time.now
    count = Order.count
    invoice = "INV/#{today.year}#{today.month}#{today.day}#{count}"

    order = Order.create(params.require(:order).permit(order_invoice: invoice, :order_total_price, order_date: today, order_status: "NEW", :customer_id, :user_id))

    if order.valid?
       redirect_to orders_path
    end
  end

  def update
    @order = Order.find(params[:id])
    @order.update(params.require(:order).permit(:menu_status))

    if @order.valid?
      redirect_to orders_path
    else
      render :edit
    end
  end
end
