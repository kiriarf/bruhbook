Rails.application.routes.draw do
  # root to: 'home#index'
  # resources :home
  resources :posts
  resources :users

  get '/signup', to: 'users#new'

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
