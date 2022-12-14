class BookingsController < ApplicationController
  def index
    @artwork = Artwork.find(params[:artwork_id])
    @artwork.bookings = @bookings
  end

  def new
    if current_user
      @artwork = Artwork.find(params[:artwork_id])
      @booking = Booking.new
    else
      redirect_to new_user_session_path
    end
  end

  def create
    @artwork = Artwork.find(params[:artwork_id])
    @booking = Booking.new(booking_params)
    @booking.user = current_user
    @booking.artwork = @artwork
    if @booking.save
      redirect_to artwork_path(@artwork), :notice => "Booked succesfully"
    else
      render :new, status: :unprocessable_entity
    end
  end

  def show
    @booking = Booking.find(params[:id])
  end

  def destroy
    @booking = Booking.find(params[:id])
    @booking.destroy
    redirect_to user_path, status: :see_other
  end

  def edit
    @booking = Booking.find(params[:id])
  end

  def update
    @booking = Booking.find(params[:id])
    @booking.update(booking_params)
    @artwork = @booking.artwork
    redirect_to user_path
  end

  private

  def booking_params
    params.require(:booking).permit(:borrow_date, :return_date, :artwork_id)
  end
end
