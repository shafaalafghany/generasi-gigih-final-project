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

  def destroy
    @menu = Menu.find(params[:id])
    @menu.destroy

    redirect_to menus_path
  end

  def create
    menu = Menu.create(menus_params)
    if menu.valid?
      redirect_to menus_path
    else
      render :new
    end
  end

  def update
    @menu = Menu.find(params[:id])
    @menu.update(menus_params)

    if @menu.valid?
      redirect_to "/menus/#{params[:id]}"
    else
      render :edit
    end
  end

  private

  def menus_params
    params.require(:menu).permit(:menu_name, :menu_price, :menu_description)
  end
end
