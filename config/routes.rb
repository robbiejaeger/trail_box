Rails.application.routes.draw do

  resources :locations, only: [:index] do
    resources :hikes, only: [:index, :show]
  end

  root to: 'locations#index'
end
