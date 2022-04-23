class MenusController < ApplicationController
  def index
    @menu = Menu.all
  end

  def new
    @menu = Menu.new
  end

  def edit
    @menu = Menu.find(params[:id])
  end

  def delete
  end

  def create
    menu = Menu.create(params.require(:menu).permit(:menu_name, :menu_price, :menu_description))
    if menu.valid?
      redirect_to menus_path
    else
      render :new
    end
  end

  def update
    @menu = Menu.find(params[:id])
    check = @menu.update(params.require(:menu).permit(:menu_name, :menu_price, :menu_description))

    if @menu.valid?
      redirect_to "/menus/#{params[:id]}"
    else
      render :edit
    end
  end
end
