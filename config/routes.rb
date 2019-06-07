Rails.application.routes.draw do
  get 'computerdata_imports/new'

  get 'computerdata_imports/create'

  devise_for :users
  get 'landing/index', as: 'landing'
  get 'equipment/list', as: 'equipment'
  get 'computers/windows', to: 'computers#windows', as: 'windows'
  get 'computers/mac', to: 'computers#mac', as: 'mac'
  
  #get "/app/"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  
  resources :computers
  resources :projectors
  resources :cameras
  resources :switchers
  resources :tvs
  resources :tickets
  
  root 'landing#index'
end
