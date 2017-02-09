Rails.application.routes.draw do
  root 'home#documentation'
  resources :home
  resources :tickets
  get '/address' => 'home#address'
  get '/route/:id' => 'home#dir_route', as: :display_route
  get '/service_engineers' => 'home#service_engineer_status', as: :service_engineers
  get '/customers' => 'home#customer_locations'
  get '/documentation' => 'home#documentation', as: :documentation
end
