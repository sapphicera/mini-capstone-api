Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  post "/users" => "users#create"
  post "/sessions" => "sessions#create"

  get "/products" => "products#index" # show all products
  get "/products/:id" => "products#show" # show product
  post "/products" => "products#create" # make new product
  patch "/products/:id" => "products#update" # update product
  delete "/products/:id" => "products#destroy" # destroy product

  get "/suppliers" => "suppliers#index" # show all suppliers
  get "/suppliers/:id" => "suppliers#show" # show supplier
  post "/suppliers" => "suppliers#create" # make new supplier
  patch "/suppliers/:id" => "suppliers#update" # update supplier
  delete "/suppliers/:id" => "suppliers#destroy" # destroy supplier

  get "/orders" => "orders#index"
  post "/orders" => "orders#create"
  get "/orders/:id" => "orders#show"
end