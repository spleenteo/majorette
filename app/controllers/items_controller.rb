class ItemsController < ApplicationController
  before_action :authenticate_user!

  def new
    @item = Item.new
    if params[:list_id]
      @list = List.find(params[:list_id])
      @item.list = @list
    end
  end

  def create
    @item = Item.new(item_params)
    @item.user_id = current_user.id

    @item.save

    if @item.save
      flash[:notice] = "You have successfully create the item."
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

  def destroy
    item = Item.find(params[:id])
    list = item.list_id
    item.destroy
    flash[:alert] = "You have successfully destroy the item."
    redirect_to list_path(list)
  end

  def upvote
    @item = Item.find(params[:id])
    if @item.present?
      @item.liked_by current_user
      redirect_to list_path(@item.list_id)
    end
  end
  def downvote
    @item = Item.find(params[:id])
    if @item.present?
      @item.unliked_by current_user
      redirect_to list_path(@item.list_id)
    end
  end

  private

  def item_params
    params.require(:item).permit(:title, :description, :url, :list_id, :user_id)
  end

end
