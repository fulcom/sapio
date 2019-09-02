class PagesController < ApplicationController
  def home
    @activities = Activity.all
    @act_bookings = ActBooking.all

    @user_activities_prefered = {}
    current_user.booked_activities.pluck(:category).each do |category_name|
      if @user_activities_prefered.key?(category_name)
        @user_activities_prefered[category_name] += 1
      else
        @user_activities_prefered[category_name] = 1
      end
    end
    @preferences = @user_activities_prefered.sort_by{|key, value| value}.reverse
    @first_category = @preferences.first.first
    @second_category = @preferences[1][0]
    # @third_category = @preferences[2][0]

    unless current_user.nil?
      @recommandations = []
      @recommandations << Activity.where("category = ?", @first_category).take(5)
      @recommandations << Activity.where("category = ?", @second_category).take(3)
      # @recommandations << Activity.where("category = ?", @third_category).take(2)
    end


    unless current_user.nil?
      @do_it_again = current_user.act_bookings.order(date: :desc).limit(5)
    end

    @last_chance = Activity.where('end_date < ?', DateTime.current + 10)

    @best_rating = Activity.order(avg_rating: :desc).first(10)
  end
end
