class ReviewsController < ApplicationController
  before_action :set_review, only: [:edit, :destroy, :update]

  def new
    @review = Review.new
  end

  def create
    @review = Review.new(review_params)
    @cocktail = Cocktail.find(params[:cocktail_id])
    @review.cocktail = @cocktail
    if @review.save
      redirect_to cocktail_path(@cocktail)
    else
      render :new
    end
  end

  def destroy
    @cocktail = @review.cocktail
    @review.destroy
    redirect_to cocktail_path(@cocktail)
  end

  def update
    @review.update(review_params)
  end

  def edit
    raise
    respond_to do |format|
      format.html
    end
  end

  private

  def review_params
    params.require(:review).permit(:rating, :content)
  end

  def set_review
    @review = Review.find(params[:id])
  end
end
