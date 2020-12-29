Rails.application.routes.draw do
  get 'databases/random'
  get 'databases/search/:search_term', to: "databases#search"
  get 'databases/instructions/:recipe_id', to: "databases#instructions"
  get 'databases/information/:recipe_id', to: "databases#information"
  resources :recipes
  resources :grocery_lists
  resource :users, only: [:create]
  post "/login", to: "users#login"
  get "/auto_login", to: "users#auto_login"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
