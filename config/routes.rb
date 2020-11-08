Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  namespace :api do 
    namespace :v1 do 
      #resources :pizzas, only: [:index, :create, :show, :update, :destroy] 
      #resources :toppings, only: [:index, :show, :create, :destroy] 

      get '/pizzas' => 'pizzas#index'
      get '/pizzas/:id' => 'pizzas#show'
      post '/pizzas' => 'pizzas#create'
      patch '/pizzas/:id' => 'pizzas#update'

      post '/toppings' => 'toppings#create'
      delete '/toppings/:id', to: 'toppings#destroy' 
       
    end 
  end 
end