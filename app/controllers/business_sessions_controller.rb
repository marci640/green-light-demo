class BusinessSessionsController < ApplicationController
    
  def new
    render 'new.html.erb'
  end

  def create
    business = Business.find_by(email: params[:email])
    if business && business.authenticate(params[:password])
      session[:business_id] = business.id
      flash[:success] = 'Successfully logged in!'
      redirect_to "/businesses/#{business.id}"

    else
      flash[:warning] = 'Invalid email or password!'
      redirect_to '/business_login'
    end
  end

  def destroy
    session[:business_id] = nil
    flash[:success] = 'Successfully logged out!'
    redirect_to '/business_login'
  end

end
