Rails.application.routes.draw do
  get 'landing/index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  
  resources :computers
  resources :projectors
  resources :cameras
  
  root 'landing#index'
end
