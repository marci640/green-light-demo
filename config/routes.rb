Rails.application.routes.draw do
  get "/" => "drivers#index"
  get "drivers" => "drivers#index"
  get "/driver_signup" => "drivers#new"
  post "/drivers" => "drivers#create"
  get "/driver_login" => "driver_sessions#new"
  post "/driver_login" => "driver_sessions#create"
  get "/driver_logout" => "driver_sessions#destroy"

  get "businesses" => "businesses#index"
  get "/business_signup" => "businesses#new"
  post "/businesses" => "businesses#create"
  get "/business_login" => "business_sessions#new"
  post "/business_login" => "business_sessions#create"
  get "/business_logout" => "business_sessions#destroy"

end
