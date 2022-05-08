Rails.application.routes.draw do
  get '/users/:id', to: 'users#show'
  post '/users', to: 'users#create'
  post '/users/:user_id/orders', to: 'orders#create'

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
