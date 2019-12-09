Rails.application.routes.draw do
  devise_for :users

  authenticated do
    root to: "restaurants#index", as: :authenticated
  end

  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :restaurants
end
