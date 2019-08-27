class SubsBookingsController < ApplicationController
  before_action :set_subs_booking, only: [:show]
  def index
    # raise
  end

  def show

  end

  def new
    @subs_booking = Subs_booking.new
  end

  def create
    @subs_booking = Subs_booking.new(subs_booking_params)
    @subs_booking.user = current_user
    if @subs_booking.save
      redirect_to subs_booking_path(@subs_booking)
    else
      render :new
    end
  end

  private

  def set_subs_booking
    @subs_booking = Subs_booking.find(params[:id])
  end

  def subs_booking_params
    params.require(:subs_booking).permit(:start_date, :end_date, :subscription_id, :user_id)
  end
end
