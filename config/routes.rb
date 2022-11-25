Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  namespace :api do
    get '/teacher', to: 'teachers#index'
    post '/teacher', to: 'teachers#create'
    get '/teacher/:id', to: 'teachers#show'
    put '/teacher/:id', to: 'teachers#update'
    patch '/teacher/:id', to: 'teachers#update'
    delete '/teacher/:id', to: 'teachers#delete'
    # resource :teacher
  end
end
