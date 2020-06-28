class Customers::TravelGenresController < ApplicationController

	def show
		@products = Travel.where(product_genre_id: params[:id]).page(params[:page]).per(8)
		@genres = TravelGenre.where(is_valid: true)
		@genre = TravelGenre.find(params[:id])
	end

end
