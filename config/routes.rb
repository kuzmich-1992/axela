Rails.application.routes.draw do
  devise_for :users
  root 'adposts#index'
  resources :adposts
  resources :rented_cars
  resources :rented_leases , :defaults => { :format => :json }
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
