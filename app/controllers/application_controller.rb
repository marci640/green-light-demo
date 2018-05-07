class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  def current_driver
    @current_driver ||= Driver.find_by(id: session[:driver_id]) if session[:driver_id]
  end

  def current_business
    @current_business ||= Business.find_by(id: session[:business_id]) if session[:business_id]
  end

  helper_method :current_driver
  helper_method :current_business

end
