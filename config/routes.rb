Rails.application.routes.draw do
  resources :rentals
  resources :movies
  resources :customers
  resources :login, only: [:new, :create]

  get "/login", to: 'login#new', as: "login"
  post "/login", to: 'login#create'

  delete "/logout", to: 'login#destroy'

  root "login#new"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
