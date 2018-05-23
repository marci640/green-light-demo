Rails.application.routes.draw do
  
  get "/driver_signup" => "drivers#new"
  post "/drivers" => "drivers#create"
  get "/driver_login" => "driver_sessions#new"
  post "/driver_login" => "driver_sessions#create"
  get "/driver_logout" => "driver_sessions#destroy"
  get "/drivers/:id" => "drivers#show"
  get "/drivers/:id/edit" => "drivers#edit"
  patch "/drivers/:id/" => "drivers#update"

  get "/" => "businesses#index"
  get "/businesses/:id" => "businesses#show"
  get "/business_signup" => "businesses#new"
  post "/businesses" => "businesses#create"
  get "/business_login" => "business_sessions#new"
  post "/business_login" => "business_sessions#create"
  get "/business_logout" => "business_sessions#destroy"

  get "/ads/:id" => "ads#show"
  patch "cars/:id" => "cars#update"
end
