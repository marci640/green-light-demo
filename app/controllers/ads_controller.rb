class AdsController < ApplicationController
  def show
    @ad = Ad.find(params[:id]) 
    @business = @ad.business
    @car = current_driver.car
  end
end
