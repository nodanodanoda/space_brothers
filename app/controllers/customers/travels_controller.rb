class Customers::TravelsController < ApplicationController

	def index
		@travels = Travel.where(travel_genre_id: TravelGenre.only_active)
		@genres = TravelGenre.only_active
	end

	def show
		@travel = Travel.find(params[:id])
	end

end
