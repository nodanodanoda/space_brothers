class Admins::TravelsController < ApplicationController
  before_action :authenticate_admin!
  def index
  	@travels = Travel.all
  end

  def show
  	@travel = Travel.find(params[:id])
  end

  def new
  	@travel = Travel.new
  end

  def create
  	@travel = Travel.new(travel_params)
  	if @travel.save
      # tags = Vision.get_image_data(@travel.picture)
      # tags.each do |tag|
      #   @travel.tags.create(tag_name: tag)
      # end
  		redirect_to admins_travel_path(@travel.id)
  	else
  		render :new
  	end
  end

  def edit
  	@travel = Travel.find(params[:id])
  end

  def update
  	@travel = Travel.find(params[:id])
  	if @travel.update(travel_params)
  		redirect_to admins_travel_path(@travel.id)
  	else
  		render :edit
  	end
  end

  private

  def travel_params
  	params.require(:travel).permit(:name, :description, :price, :picture, :sales_status, :travel_genre_id, :days)
  end
end
