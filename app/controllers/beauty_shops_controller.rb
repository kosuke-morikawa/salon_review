class BeautyShopsController < ApplicationController
  def index
    @beauty_shops = BeautyShop.all
  end

  def show
    @beauty_shop = BeautyShop.find(params[:id])
  end
end
