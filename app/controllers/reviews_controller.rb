class ReviewsController < ApplicationController
  def index
    @beauty_shop = BeautyShop.find(params[:beauty_shop_id])
    @reviews = @beauty_shop.reviews
  end

  def create
    @review = Review.new(review_params)
    @review.user_id = current_user.id
    if @review.save
      redirect_to beauty_shop_reviews_path(@review.beauty_shop)
    else
      @beauty_shop = BeautyShop.find(params[:beauty_shop_id])
      render "beauty_shops/show"
    end
  end

  private
  def review_params
    params.require(:review).permit(:beauty_shop_id, :score, :content)
  end
end
