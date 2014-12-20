class ItemsController < ApplicationController

  def new
    @item = Item.new
  end

  def create
    @item = Item.new(item_params)
    @item.save

    if @item.save
      redirect_to list_path(@item.list_id)
    else
      render 'new'
    end
  end

  def index
    @items = Item.all
  end

  def show
    @item = Item.find(params[:id])
  end

  private

  def item_params
    params.require(:item).permit(:title, :description, :url, :list_id)
  end

end
