Rails.application.routes.draw do
  resources :gardens do
    collection do
      get 'my_gardens'
  end
    resources :bookings, only: [ :new, :create, :show, :destroy ] do
      collection do
        get 'my_bookings'
      end
    end
end


  devise_for :users
  root to: 'gardens#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
