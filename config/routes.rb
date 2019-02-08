Rails.application.routes.draw do
  resources :users
  resources :sessions
  resources :contact, only: [:index]
  resources :team, only: [:index]

  root 'home#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
