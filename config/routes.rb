Rails.application.routes.draw do
  resources :peliculas
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "peliculas#index"

  resources :generos, only: [:index, :show] do
    get     'peliculas', to: 'peliculas#index', as: 'peliculas'
    get     'peliculas/new', to: 'peliculas#new', as: 'peliculas_movie'
    get     'peliculas/:id', to: 'peliculas#show', as: 'pelicula'
    get     'peliculas/:id/:edit', to: 'peliculas#edit', as: 'edit_pelicula'
    post    'peliculas', to: 'peliculas#create'
    patch   'peliculas/:id', to: 'peliculas#update'
    put     'peliculas/:id', to: 'peliculas#update'
    delete  'peliculas/:id', to: 'peliculas#destroy'
  
  end


  namespace :admin do
    get     'peliculas', to: 'peliculas#index', as: 'peliculas'
    get     'peliculas/new', to: 'peliculas#new', as: 'peliculas_movie'
    get     'peliculas/:id', to: 'peliculas#show', as: 'pelicula'
    get     'peliculas/:id/:edit', to: 'peliculas#edit', as: 'edit_pelicula'
    post    'peliculas', to: 'peliculas#create'
    patch   'peliculas/:id', to: 'peliculas#update'
    put     'peliculas/:id', to: 'peliculas#update'
    delete  'peliculas/:id', to: 'peliculas#destroy'
  
  end





end
