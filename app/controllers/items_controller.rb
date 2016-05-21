class ItemsController < ApplicationController
  def index
    @items = Item.all
  end

  def show
    @item = Item.find(params[:id])
    @jewelry = Jewelry.find(params[:jewelry_id])
  end

  def new
    @item = Item.new
  end

  def create
    @item = Item.new(item_params)

    if @item.save
      redirect_to jewelry_item_path(@item.jewelry_id, @item.id)
    else
      render 'new'
    end
  end

  def destroy
    @item = Item.find(params[:id])

    @item.destroy

    redirect_to "/jewelries/:jewelry_id/items"
  end

  private

  def item_params
    item_params = params.require( :item ).permit( :name, :code, :price, :jewelry_id )
  end
end
