class Customers::TravelsController < ApplicationController

	def index
		@travels = Travel.only_active
		@genres = TravelGenre.only_active
	end

	def show
		@travel = Travel.find(params[:id])
	end

end
