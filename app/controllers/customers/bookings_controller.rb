class Customers::BookingsController < ApplicationController

	before_action :authenticate_customer!

	def new
		@travel = Travel.find(params[:travel_id])
		gon.days = @travel.days
		# @booking = Booking.new
	end

	def create
		@booking = current_customer.bookings.create(booking_params)
        redirect_to customers_thanks_path notice:"予約が完了しました"
	end

	def index
		@bookings = current_customer.bookings.order(id: "DESC")
	end
	def show
		@booking = Booking.find(params[:id])
	end

	def update
	end

	def thanks
	end

	private

    def booking_params
  	  params.require(:booking).permit(:start_day, :end_day, :travel_id)
    end

end
