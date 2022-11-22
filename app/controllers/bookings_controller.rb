class BookingsController < ApplicationController
  def index
    @artwork = Artwork.find(params[:artwork_id])
    @artwork.bookings = @bookings
  end

  def new
    @artwork = Artwork.find(params[:artwork_id])
    @booking = Booking.new
  end

  def create
    @artwork = Artwork.find(params[:artwork_id])
    @booking = Booking.new(booking_params)
    @booking.artwork = @artwork
    if @booking.save
      redirect_to artwork_path(@artwork)
    else
      render :new, status: :unprocessable_entity
    end
  end

  def show
    @booking = Booking.find(params[:id])
  end

  private

  def bookmark_params
    params.require(:booking).permit(:borrow_date, :return_date, :artwork_id, :user_id)
  end
end
