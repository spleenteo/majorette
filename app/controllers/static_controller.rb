class StaticController < ApplicationController
  before_action :authenticate_user!
  def homepage
    @lists = List.all.limit(5)
    @items = Item.all.limit(5)
  end
end
