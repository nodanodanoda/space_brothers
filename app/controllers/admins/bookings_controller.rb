class Admins::BookingsController < ApplicationController
	before_action :authenticate_admin!
  def index
  	@bookings = Booking.all.order(id: "DESC")
  end

  def show
  	@booking = Booking.find(params[:id])
  end

  def edit
  end
end
