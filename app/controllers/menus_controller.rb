class MenusController < ApplicationController
  def index
    @menu = Menu.all
  end

  def new
  end

  def edit
  end

  def delete
  end
end
