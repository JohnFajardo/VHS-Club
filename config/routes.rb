Rails.application.routes.draw do
  resources :rentals
  resources :movies
  resources :customers
  resources :login
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
