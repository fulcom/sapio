class ActBookingsController < ApplicationController
  before_action :set_act_booking, only: [:show]

  def index
    @act_bookings = Act_booking.all
  end

  def show
  end

  def new
    @activity = Activity.find(params[:activity_id])
    @act_booking = Act_booking.new
  end

  def create
    @activity = Activity.find(params[:activity_id])
    @act_booking = Act_booking.new(act_booking_params)
    @act_booking.activity = @activity
    @act_booking.user = current_user
    if @act_booking.save
      redirect_to activity_act_booking_path(@activity, @act_booking)
    else
      render "activities/show"
    end
  end

  private

  def set_act_booking
    @activity = Activity.find(params[:activity_id])
    @act_booking = Act_booking.find(params[:id])
  end

  def act_booking_params
    params.require(:act_booking).permit(:date, :user_id, :activity_id, :review_id, :used)
  end
end
