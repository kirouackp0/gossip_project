Rails.application.routes.draw do
 #Routes for views/pages
  root 'homepage#index'
  get 'contact/index', to: 'contact#index'
  get 'team/index', to: 'team#index'
  get 'gossips/index', to: 'gossips#index'
  get 'gossips/new', to: 'gossips#new'
  get 'cities/index', to: 'cities#index'
  get 'cities/new', to: 'cities#new'
  get 'users/index', to: 'users#index'

#Routes for resources
  resources :cities
  resources :users
  resources :gossips
  resources :tags
  resources :private_messsages
  resources :comments
  resources :likes

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end

