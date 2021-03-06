class ActBookingsController < ApplicationController
  before_action :set_act_booking, only: [:show, :destroy]

  def index
    @act_bookings = ActBooking.all
    @act_bookings.select do |element|
      element.user = current_user
    end
  end

  def show
    @qrcode = RQRCode::QRCode.new("http://github.com/")
    @review = Review.new
  end

  def new
    @activity = Activity.find(params[:activity_id])
    @act_booking = ActBooking.new
  end

  def create
    @activity = Activity.find(params[:activity_id])
    @act_booking = ActBooking.new(act_booking_params)
    @act_booking.activity = @activity
    @act_booking.user = current_user
    if @act_booking.save
      redirect_to activity_act_booking_path(@activity, @act_booking)
    else
      render "activities/show"
    end
  end

  def destroy
    @act_booking.destroy!
    redirect_to act_bookings_path
  end

  def used_booking
  end

  private

  def set_act_booking
    @activity = Activity.find(params[:activity_id]) if params[:activity_id]
    @act_booking = ActBooking.find(params[:id]) if params[:id]
  end

  def act_booking_params
    params.require(:act_booking).permit(:date, :user_id, :activity_id, :review_id, :used)
  end
end
