Rails.application.routes.draw do
  root 'homepage#index'
  get 'contact/index', to: 'contact#index'
  get 'team/index', to: 'team#index'
  get 'gossip_feed/index', to: 'gossip_feed#index'
  get 'new_gossip_form/index', to: 'new_gossip_form#index'

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

