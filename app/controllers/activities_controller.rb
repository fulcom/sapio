class ActivitiesController < ApplicationController
  before_action :set_activity, only: [:show]

  def filter_sort_modal
    @activities = Activity.all

    ### Filtre par catégorie
    categories_all = []
    Activity.all.each do |activity|
      categories_all << activity.category
    end
    @categories = categories_all.uniq

  end

  def filter_sort
    # categories = {}
    #   for i in (0..params.keys.length-1)
    #     if params.keys[i].split("_").first == "category"
    #       categories[params.keys[i]] = params.values[i]
    #     end

    # @places = Place.all

    @activities = []

    Activity.all.each do |activity|
      @activities << activity
    end

    categories = []
    for i in (0..params.keys.length-1)
      categories << params.values[i] if params.keys[i].split("_").first == "category"
    end

    activities_by_category = []
    categories.each do |category|
      Activity.all.each do |activity|
        activities_by_category << activity if activity.category == category
      end
    end

    unless activities_by_category == []
      @activities = activities_by_category
    end

    # raise
    places = []
    for i in (0..params.keys.length-1)
      places << params.values[i] if params.keys[i].split("_").first == "category"
    end


    sorting_choice = params["sort"]
    case sorting_choice
      when "end_date"
        @activities.sort_by! { |activity| activity.end_date }
      when "avg_rating"
        @activities.sort_by! { |activity| activity.avg_rating }.reverse!
      when "name"
        @activities.sort_by! { |activity| activity.name }
      when "distance"
        position_current_user = [params["latitude"], params["longitude"]]
        position_from_me = params["distanceFromMe"].to_f
        activities_near = []
        @activities.each do |activity|
          activities_near << activity if Place.near(position_current_user, position_from_me).include?(activity.place)
        end
        @activities = activities_near
    end
  end

  def index
    if params[:query].present?
      @activities = []
      @pg_search_docs = PgSearch.multisearch(params[:query])
      @places = @pg_search_docs.map(&:searchable).map do |element|
        if defined?(element.category)
          @activities << element
          Place.find(element.place_id)
        else
          element.activities.each do |a|
            @activities << a
          end
          element
        end
      end
    else
      @activities = Activity.all
      @places = Place.geocoded
    end
    @markers = @places.map do |place|
      {
        lat: place.latitude,
        lng: place.longitude,
        infoWindow: render_to_string(partial: "info_window", locals: { place: place }),
        category: place.activities.first.category.downcase.gsub("é", "e").gsub("â", "a")
      }
    end
    #raise
  end

  def show
    @act_booking = ActBooking.new
    sum_of_ratings = 0
    @activity.reviews.each do |review|
      if review.rating.nil?
        @average_rating = 0
      else
        sum_of_ratings += review.rating
        @average_rating = ((sum_of_ratings / @activity.reviews.size) * 2.0).round / 2.0
      end
    end
    @favorite = Favorite.where(user: current_user, activity: params[:id]).take
    # raise
  end

  private

  def set_activity
    @activity = Activity.find(params[:id])
  end
end
