Rails.application.routes.draw do
  resources :quotes
  resources :users

  root "static_pages#home"
  # root cant have / routes

  get "static_pages/home"
  # get "static_pages/home", to: "static_pages#hello"
  # the above route will map help function from static_pages contaroller. We can also map funtion from other controllers

  get "static_pages/help"
  get "static_pages/about"
  get "static_pages/contact"
  # get "static_pages/hello"
  # this are routes which will look for views according to their url

  get "/hello", to: "static_pages#hello"

  # root "posts#index"
  # this are routes ehich are assigning route to a method in controller
  get "/jin", to: "static_pages#hello"
  get "/nina", to: "application#nina"
  get "/ito", to: "quotes#index"
end
