Rails.application.routes.draw do
  devise_for :users

  authenticated do
    root to: "restaurants#index", as: :authenticated
  end

  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :restaurants do
    member do
      get 'like', to: "restaurants#like"
    end
  end
  get 'dashboard',  to: 'restaurants#dashboard'
  get 'profile', to: 'pages#profile'
  get 'qrcode', to: 'pages#qrcode'
end
