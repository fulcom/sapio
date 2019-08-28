class FavoritesController < ApplicationController

  def show
    @favorite = Favorite.find(params[:id])
    #raise
  end

  def new
    @favorite = Favorite.new
  end

  def create
    favorite = Favorite.new(user: current_user)
    activity = Activity.find(params[:id])
  end


  def destroy
    raise
  end

end
