Rails.application.routes.draw do

  resources :locations, only: [:index]

  root to: 'locations#index'
end
