Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  get "/products" => "products#products"
  get "/gatorade" => "products#gatorade"
  get "/kitkat" => "products#kitkat"
  get "/macncheese" => "products#macncheese"
end
