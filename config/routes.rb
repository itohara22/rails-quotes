Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check
  # Render dynamic PWA files from app/views/pwa/*
  get "service-worker" => "rails/pwa#service_worker", as: :pwa_service_worker
  get "manifest" => "rails/pwa#manifest", as: :pwa_manifest

  # ************************************************************
  # Defines the root path route ("/")
  root "static_pages#home"

  # get "static_pages/hello"
  # get "static_pages/help"
  # get "static_pages/contact"
  # get "static_pages/about"


  get "/hello", to: "static_pages#hello", as: "haaa"
  # as: "haaa" means we use haaa_path to get "/hello" hello path WE ALSO HAVE TO MODIFY TESTS
  get "/help", to: "static_pages#help"
  get "/about", to: "static_pages#about"
  get "/contact", to: "static_pages#contact"

  # get "users/new"
  get "signup", to: "users#new"
end
