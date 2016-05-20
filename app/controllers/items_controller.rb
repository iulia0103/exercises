class ItemsController < ApplicationController
  def index
    @items = Item.all
  end

  def show
    @item = Item.find(params[:id])
    @jewelry = Jewelry.find(params[:jewelry_id])
  end
end
