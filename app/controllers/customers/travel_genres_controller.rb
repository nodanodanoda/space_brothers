class Customers::TravelGenresController < ApplicationController

	def show
		@travels = Travel.where(travel_genre_id: params[:id])
		@genres = TravelGenre.only_active
		@genre = TravelGenre.find(params[:id])
	end

end
