class ActivitiesController < ApplicationController
  before_action :set_activity, only: [:show]
  def index
    @activities = Activity.all
  end

  def show
    @act_booking = ActBooking.new
    @favorite = Favorite.where(user: current_user, activity: params[:id]).take
    # raise
  end

  private

  def set_activity
    @activity = Activity.find(params[:id])
  end
end
