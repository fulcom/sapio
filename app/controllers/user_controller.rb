class UserController < ApplicationController
  def profile
    @subscription_exists = SubsBooking.where(user: current_user).exists?
  end
end
