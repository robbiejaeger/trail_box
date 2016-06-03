Rails.application.routes.draw do

  root to: 'locations#index'

  resources :locations, only: [:index] do
    resources :hikes, only: [:index, :show]
  end

  resources :users, only: [:new, :create]

  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'
end
