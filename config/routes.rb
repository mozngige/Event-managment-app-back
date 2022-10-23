Rails.application.routes.draw do
  resources :users, only: [:index, :create, :show]
  resources :categories, only: [:index]
  
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  # The below routes shall create a user session, authenticating them and log them out on requirement
  post "/login", to: "sessions#create"
  delete "/logout", to: "sessions#destroy"
end
