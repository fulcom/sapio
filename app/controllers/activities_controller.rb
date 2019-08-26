class ActivitiesController < ApplicationController
  before_action :set_activity, only: [:show]
  def index
    @activities = Activity.all
  end

  def show
  end

  private

  def activity_params
    params.require(:activity).permit(:category, :name, :description, :photo_one, :photo_two, :photo_three, :favorite, :start_date, :end_date, :avg_rating, :place_id, :subscription_id)
  end

  def set_activity
    @activity = Activity.find(params[:id])
  end
end
