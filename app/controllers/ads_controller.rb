class AdsController < ApplicationController
  def show
    @ad = Ad.find(params[:id]) 
    @business = @ad.business
  end
end
