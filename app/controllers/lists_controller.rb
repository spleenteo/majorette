class ListsController < ApplicationController


  def new
    @list = List.new
  end

  def create
    @list = List.new(list_params)
    @list.save

    if @list.save
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

  private

  def list_params
    params.require(:list).permit(:title, :description)
  end
end
