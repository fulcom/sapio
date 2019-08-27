class SubsBookingsController < ApplicationController
  # before_action :set_subs_booking, only: [:show]
  def index
    @subs_bookings = current_user.subs_bookings.order(end_date: :desc)
  end

  def show
    @subs_booking = SubsBooking.find(params[:id])
  end

  def new
    @subs_booking = SubsBooking.new
    @subscriptions = Subscription.all
  end

  def create
    subscription = Subscription.find(params[:subs_booking][:subscription_id])
    subs_booking = SubsBooking.new(subscription_id: subscription.id)
    subs_booking.user = current_user
    subs_booking.start_date = Date.today
    subs_booking.end_date = Date.today + 1.month

    if subs_booking.save
      redirect_to subs_bookings_path
    else
      render :new
    end
  end

  private

  # def set_subs_booking
  #   @subs_booking = Subs_booking.find(params[:id])
  # end

  # def subs_booking_params
  #   params.require(:subs_booking).permit(:subscription_id)
  # end
end
