class ActivitiesController < ApplicationController
  before_action :set_activity, only: [:show]
  def index
    # @activities = Activity.all
    @activities = Activity.geocoded # returns activities with coordinates

    @markers = @activities.map do |activity|
      {
        lat: activity.latitude,
        lng: activity.longitude,
        infoWindow: render_to_string(partial: "info_window", locals: { flat: flat })
      }
    end
  end

  def show
    @act_booking = ActBooking.new
  end

  private

  def set_activity
    @activity = Activity.find(params[:id])
  end
end
