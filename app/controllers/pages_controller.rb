class PagesController < ApplicationController
  def home
    @activities = Activity.all
    @act_bookings = ActBooking.all

    @do_it_again = current_user.act_bookings.order(date: :desc).limit(5)

    @last_chance = Activity.where('end_date < ?', DateTime.current + 10)

    @best_rating = Activity.order(avg_rating: :desc).first(10)
  end
end
