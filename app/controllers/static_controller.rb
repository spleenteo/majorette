class StaticController < ApplicationController
  def homepage
    @lists = List.all.limit(5)
    @items = Item.all.limit(5)
  end
end
