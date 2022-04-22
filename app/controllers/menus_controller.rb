class MenusController < ApplicationController
  def index
    @menu = Menu.all
  end

  def new
    @menu = Menu.new
  end

  def edit
  end

  def delete
  end

  def create
    menu = Menu.create(params.require(:menu).permit(:menu_name, :menu_price, :menu_description))

    redirect_to menus_path
  end
end
