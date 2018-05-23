class CarsController < ApplicationController
  def update
    car = Car.find(params[:id]) 
    car.update(
      ad_id: params[:ad_id]
    )
    redirect_to "/drivers/#{current_driver.id}"
  end 
end
