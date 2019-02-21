Rails.application.routes.draw do

  devise_for :users
  root to: 'gardens#index'

  resources :gardens do
    resources :bookings, only: [ :create ]
    collection do
      get 'my_gardens'
    end
  end
  resources :bookings, only: [ :index, :show, :destroy ]
  post 'root', to: 'gardens#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
