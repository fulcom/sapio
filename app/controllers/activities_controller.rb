class ActivitiesController < ApplicationController
  before_action :set_activity, only: [:show]
  def index
    # @activities = Activity.all
    @activities = Activity.all # returns activities with coordinates
    @places = Place.geocoded

    @markers = @places.map do |place|
      {
        lat: place.latitude,
        lng: place.longitude,
        infoWindow: render_to_string(partial: "info_window", locals: { place: place }),
        category: place.activities.first.category.downcase.gsub("é", "e").gsub("â", "a")
      }
    end
  end

  def show
    @act_booking = ActBooking.new
    sum_of_ratings = 0
    @activity.reviews.each { |review| sum_of_ratings += review.rating }
    @average_rating = ((sum_of_ratings / @activity.reviews.size) * 2.0).round / 2.0
    @favorite = Favorite.where(user: current_user, activity: params[:id]).take
    # raise
  end

  private

  def set_activity
    @activity = Activity.find(params[:id])
  end
end
