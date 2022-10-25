Rails.application.routes.draw do
  devise_for :organizers, path: 'organizers', path_names:{
    sign_in: 'login',
    sign_out: 'logout',
    registration: 'signup'
  },

  controllers:{
    sessions: 'organizer/sessions',
    password: 'organizer/passwords',
    registrations: 'organizer/registrations'
  }

  devise_for :users, path: 'users', path_names:{
    sign_in: 'login',
    sign_out: 'logout',
    registration: 'signup'
  },

  controllers:{
    sessions: 'users/sessions',
    password: 'users/passwords',
    registrations: 'users/registrations'
  }

  resources :users, only: [:index, :create, :show]
  resources :communities, only: [:index, :create, :show]
  resources :abouts
  resources :user_events
  resources :events, only: [:create, :index, :show]
  resources :event_categories
  resources :user_profiles
  resources :categories, only: [:index, :show]
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  # The below routes shall create a user session, authenticating them and log them out on requirement
  get "/me", to:"users#show"
  post "/login", to: "sessions#create"
  delete "/logout", to: "sessions#destroy"
end
