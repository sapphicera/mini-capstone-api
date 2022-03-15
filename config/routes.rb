Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  get "/products" => "products#index" # show all products
  get "/products/:id" => "products#show" # show product
  post "/products" => "products#create" # make new product
  patch "/products/:id" => "products#update" # update product
  delete "products/:id" => "products#destroy" # destroy product
end