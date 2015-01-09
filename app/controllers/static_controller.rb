class StaticController < ApplicationController
  before_action :authenticate_user!
  def homepage
    @lists = List.all.limit(5)
    @items = Item.all
  end

  def mystuff
    @lists = List.all.where("user_id = ?", current_user.id).order("created_at desc")
    @items = Item.all.where("user_id = ?", current_user.id)
  end
end
