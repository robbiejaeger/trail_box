Rails.application.routes.draw do

  root to: 'locations#index'

  resources :locations, only: [:index] do
    resources :hikes, only: [:index, :show, :new, :create]
  end

  resources :users, only: [:new, :create]

  # namespace :admin do
  #   resources :categories
  # end

  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'
end
