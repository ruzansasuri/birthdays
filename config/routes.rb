Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check
  
  root "friends#index"
  resources :friends
  # get "/friends", to: "friends#index"
  # get "/friends/new", to: "friends#new"
  # post "/friends", to: "friends#create"
  # get "/friends/:id", to: "friends#show"
  # get "/friends/:id/edit", to: "friends#edit"
  # patch "/friends/:id", to: "friends#update"
  # put "/friends/:id", to: "friends#update"
  # delete "/friends/:id", to: "friends#destroy"
  
  # Render dynamic PWA files from app/views/pwa/* (remember to link manifest in application.html.erb)
  # get "manifest" => "rails/pwa#manifest", as: :pwa_manifest
  # get "service-worker" => "rails/pwa#service_worker", as: :pwa_service_worker

  # Defines the root path route ("/")
  # root "posts#index"
end
