# Rails.application.routes.draw do
#   root to: "application#index"
#   resources :posts do
#     resources :likes
#     resources :bullshits
#   end

#   resources :users


#   get '/signup', to: 'users#new'
#   get '/login', to: 'sessions#login'
#   post '/login', to: 'sessions#create'
#   delete '/logout', to: 'sessions#destroy'

#   # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

#   namespace :api do
#     namespace :v1 do
#       resources :posts, only: [:index, :show, :create, :destroy]
#     end
#   end

# end

Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :registrations, only:[:create]
      resources :posts do
        resources :likes
        resources :bullshits
      end
      resources :sessions, only:[:create, :destroy]
    end
  end
end