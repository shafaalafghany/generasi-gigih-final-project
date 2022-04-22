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
end
