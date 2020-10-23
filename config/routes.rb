Rails.application.routes.draw do
  devise_for :users
  resources :adposts
  resources :rented_cars
  resources :rented_leases , :defaults => { :format => :json }
  resources :chats
  resources :chat_messages
  resources :conversations
  resources :messages
  root 'adposts#index'
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

