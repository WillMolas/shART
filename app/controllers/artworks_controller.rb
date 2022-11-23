class ArtworksController < ApplicationController
  skip_before_action :authenticate_user!, only: :index

  def index
    @artworks = Artwork.all
  end

  def show
    @artwork = Artwork.find(params[:id])
    @booking = Booking.new
  end

  def new
    if current_user
      @artwork = Artwork.new
    else
      redirect_to new_user_session_path
    end
  end

  def create
    @artwork = Artwork.new(artwork_params)
    @artwork.user = current_user
    if @artwork.save
      redirect_to artwork_path(@artwork)
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
    @artwork = Artwork.find(params[:id])
  end

  def update
    @artwork = Artwork.find(params[:id])
    @artwork.update(artwork_params)
    redirect_to artwork_path(@artwork)
  end

  def destroy
    @artwork = Artwork.find(params[:id])
    @artwork.destroy
    redirect_to artworks_path
  end

  private

  def artwork_params
    params.require(:artwork).permit(:name, :artist, :category, :description, :location, :measurements, :photo, :price)
  end
end
