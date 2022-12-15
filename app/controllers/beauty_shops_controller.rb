class BeautyShopsController < ApplicationController
  before_action :authenticate_user!, only: [:show]
  def index
    @beauty_shops = BeautyShop.all
  end

  def show
    @beauty_shop = BeautyShop.find(params[:id])
    @review = Review.new
  end
end
