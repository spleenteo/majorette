class ListsController < ApplicationController


  def new
    @list = List.new
  end

  def create
    List.create(params)
    List.save
  end

  def index
    @lists = List.all
  end

  def show
    @list = List.find(params[:id])
  end
end
