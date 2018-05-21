class BusinessesController < ApplicationController

  def index
    @ad_array = []
    businesses = Business.all
    businesses.each do |business|
      @ad_array.push(hash = { business: business.business_name, image: business.ad.image, monthly_rate: business.ad.monthly_rate})
    end
    @current_driver = current_driver; 

  end 

  def new
    render 'new.html.erb'
  end

  def create
    business = Business.new(
      business_name: params[:business_name],
      first_name: params[:first_name],
      last_name: params[:last_name],
      website_url: params[:website_url],
      email: params[:email],
      password: params[:password],
      password_confirmation: params[:password_confirmation]
    )
    if business.save
      session[:business_id] = business.id
      flash[:success] = 'Successfully created account!'
      redirect_to '/'
    else
      flash[:warning] = 'Invalid email or password!'
      redirect_to '/signup'
    end
  end

  def show
    @business = Business.find(params[:id]) 
    @ad = @business.ad
    @cars = @ad.cars
    render "show.html.erb"
  end

end
