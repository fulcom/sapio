class FavoritesController < ApplicationController

  def show
    @favorite = Favorite.find(params[:id])
    #raise
  end

  def new
    @favorite = Favorite.new
  end

  def create
    activity = Activity.find(params[:activity_id])
    favorite = Favorite.new(user: current_user, activity: activity)
    # favorite = favorite.new(favorite_params)
    # favorite.user = current_user
    # favorite.activity = activity

    if favorite.save
      redirect_to activity_path(activity)
    else
      redirect_to activity_path(activity)
    end
  end

  def destroy
    favorite = Favorite.find(params[:id])
    activity = Activity.find(params[:activity_id])
    favorite.destroy
    redirect_to activity_path(activity)
  end

  # def favorite_params
  #   params.require(:favorite).permit(:user_id, :activity_id)
  # end
end
