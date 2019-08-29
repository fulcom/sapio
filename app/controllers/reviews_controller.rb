class ReviewsController < ApplicationController
  before_action :set_act_booking, only: [:new, :create]

  def new
    @review = Review.new
  end

  def create
    @review = Review.new(params_review)
    @act_booking.activity = @activity
    @act_booking.user = current_user
    @review.act_booking = @act_booking
    if @review.save
      redirect_to act_bookings_path
    else
      flash[:alert] = "Vous n'avez pas attribué de note"
      render "new"
    end
  end

  private

  def set_act_booking
    @act_booking = ActBooking.find(params[:act_booking_id])
  end

  def params_review
    params.require(:review).permit(:rating)
  end
end
