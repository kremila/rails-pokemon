Rails.application.routes.draw do
  root to: "pages#home"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  #
  get "/pokemons", to: "pokemons#index"

  get "/pokemons/:id", to: "pokemons#show"

  get "/trainers", to: "trainers#index"

  get "/trainers/:id", to: "trainers#show", as: :trainer

  post "/pokemons/:pokemon_id/pokeballs", to: "pokeballs#create", as: :pokemon_pokeballs

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Render dynamic PWA files from app/views/pwa/* (remember to link manifest in application.html.erb)
  # get "manifest" => "rails/pwa#manifest", as: :pwa_manifest
  # get "service-worker" => "rails/pwa#service_worker", as: :pwa_service_worker

  # Defines the root path route ("/")
  # root "posts#index"
end
