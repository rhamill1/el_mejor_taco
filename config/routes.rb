Rails.application.routes.draw do
  root "regions#index"

  # get "/regions", to: "regions#index", as: "regions"
  # get "/regions/new", to: "regions#new", as: "new_region"
  # post "/regions", to: "regions#create"
  # get "/regions/:id", to: "regions#show", as: "region"

  # get "/taquerias", to: "taquerias#index", as: "taquerias"
  # get "/taquerias/new", to: "taquerias#new", as: "new_taqueria"
  # post "/taquerias", to: "taquerias#create"
  # get "/taquerias/:id", to: "taquerias#show", as: "taqueria"
  # get "/taquerias/:id/edit", to: "taquerias#edit", as: "edit_taqueria"
  # patch "/taquerias/:id", to: "taquerias#update"
  # delete "/taquerias/:id", to: "taquerias#destroy"

  resources :regions do
    resources :taquerias
  end

  resources :taquerias, only: [] do
    resources :tacos
  end

end
