Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Render dynamic PWA files from app/views/pwa/* (remember to link manifest in application.html.erb)
  # get "manifest" => "rails/pwa#manifest", as: :pwa_manifest
  # get "service-worker" => "rails/pwa#service_worker", as: :pwa_service_worker

  # Defines the root path route ("/")
  root "users#index"
  get "user/new", to: "users#new", as: "new_user"
  get "user/:id", to: "users#show", as: "show_user"
  get "user/edit/:id", to: "users#edit", as: "edit_user"
  get "user/delete/:id", to: "users#destroy", as: "delete_user"

  post "user/new", to: "users#create"
  patch "user/edit/:id", to: "users#edit_user"
  delete "user/delete/:id", to: "users#destroy"
end
