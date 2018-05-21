class DriversController < ApplicationController

  def new
    render 'new.html.erb'
  end

  def create
    driver = Driver.new(
      first_name: params[:first_name],
      last_name: params[:last_name],
      phone_number: params[:phone_number],
      street_address_1: params[:street_address_1],
      street_address_2: params[:street_address_2],
      city: params[:city],
      state: params[:state],
      zip_code: params[:zip_code],
      license_plate_number: params[:license_plate_number],
      email: params[:email],
      password: params[:password],
      password_confirmation: params[:password_confirmation]
    )
    car = Car.new(
      driver_id: driver.id,
      make: params[:make],
      model: params[:model],
      year: params[:year],
      mileage: params[:mileage],
      car_image: params[:car_image],
      odometer_image: params[:odometer_image]
    )
    if driver.save && car.save
      session[:driver_id] = driver.id
      flash[:success] = 'Successfully created account!'
      redirect_to '/drivers'
    else
      flash[:warning] = 'Invalid email or password!'
      redirect_to '/signup'
    end
  end

  def show
    @driver = Driver.find(params[:id]) 
    @car = @driver.car
    @ad = @car.ad
    @business = @ad.business
    render "show.html.erb"
  end

  def edit
    @driver = Driver.find(params[:id]) 
    @car = @driver.car
  end 

  def update
    driver = Driver.find(params[:id]) 
    car = driver.car
    driver.update(
      first_name: params[:first_name],
      last_name: params[:last_name],
      phone_number: params[:phone_number],
      street_address_1: params[:street_address_1],
      street_address_2: params[:street_address_2],
      city: params[:city],
      state: params[:state],
      zip_code: params[:zip_code],
      license_plate_number: params[:license_plate_number],
      email: params[:email],
      password: params[:password],
      password_confirmation: params[:password_confirmation]
    )
    car.update(
      driver_id: driver.id,
      make: params[:make],
      model: params[:model],
      year: params[:year],
      mileage: params[:mileage],
      car_image: params[:car_image],
      odometer_image: params[:odometer_image]
    )

    if driver.save
      flash[:info] = "Driver successfully updated."
      redirect_to "/drivers/#{driver.id}"
    else 
      render :edit
    end 
  end 

end
