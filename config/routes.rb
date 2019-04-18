Rails.application.routes.draw do
  devise_for :users
  get 'landing/index', as: 'landing'
  
  #get "/app/"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  
  resources :computers
  resources :projectors
  resources :cameras
  resources :switchers
  
  root 'landing#index'
end
