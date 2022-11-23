class ReviewsController < ApplicationController
  def new
    if current_user
      @artwork = Artwork.find(params[:artwork_id])
      @review = Review.new
    else
      redirect_to new_user_session_path
    end
  end

  def create
    @artwork = Artwork.find(params[:artwork_id])
    @review = Review.new(review_params)
    @review.user = current_user
    @review.artwork = @artwork
    if @review.save
      redirect_to artwork_path(@artwork)
    else
      render :new, status: :unprocessable_entity
    end
  end

  def destroy
    @review = Review.find(params[:id])
    artwork = @review.artwork
    @review.destroy
    redirect_to artwork_path(artwork), status: :see_other
  end

  private

  def review_params
    params.require(:review).permit(:comment, :rating, :review_date, :artwork_id)
  end
end
