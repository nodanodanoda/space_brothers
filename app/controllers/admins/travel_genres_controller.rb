class Admins::TravelGenresController < ApplicationController

  before_action :authenticate_admin!

  def index
  	@genres = TravelGenre.all
  	@newgenre = TravelGenre.new
  end

  def create
	@newgenre = TravelGenre.new(genre_params)
	if @newgenre.save
		redirect_to admins_travel_genres_path
	else
		render :index
    end
  end

  def edit
  	@genre = TravelGenre.find(params[:id])
  end

  def update
  	@genre = TravelGenre.find(params[:id])
  	if @genre.update(genre_params)
	    redirect_to admins_travel_genres_path
	else
		render :edit
	end
  end

  private

  def genre_params
  	params.require(:travel_genre).permit(:genre, :is_valid)
  end

end
