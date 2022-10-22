Rails.application.routes.draw do
  resources :communities
  resources :abouts
  resources :user_events
  resources :events
  resources :event_categories
  resources :user_profiles
  resources :categories
  resources :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
