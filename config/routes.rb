Rails.application.routes.draw do
  get '/', to: "application#index"
  resources :posts
  resources :users

  get '/', to: 'application#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
