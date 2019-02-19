Rails.application.routes.draw do
  resources :gardens do
    resources :bookings, only: [ :new, :create, :show, :destroy ]
end

  devise_for :users
  root to: 'gardens#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
