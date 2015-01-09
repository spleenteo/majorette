class ListsController < ApplicationController

  before_action :authenticate_user!

  def new
    @list = List.new
  end

  def create
    @list = List.new(list_params)
    @list.user_id = current_user.id
    @list.save

    if @list.save
      flash[:notice] = "You have successfully create a new list."
      redirect_to @list
    else
      render 'new'
    end
  end

  def index
    @lists = List.all
  end

  def show
    @list = List.find(params[:id])
  end


  def destroy
    list = List.find(params[:id])
    if list.items.count == 0
      list.destroy
      flash[:alert] = "list destroyed"
      redirect_to lists_path()
    else
      flash[:alert] = "NO! Delete all items in the list in order to delete it."
      redirect_to list_path(list)
    end

  end




  private

  def list_params
    params.require(:list).permit(:title, :description)
  end
end
