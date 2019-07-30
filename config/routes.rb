Rails.application.routes.draw do
  resources :subscribers
  devise_for :artists
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: "pages#home"

  
  resources :users
  resources :artists
  resources :artist_albums
  resources :playlists
  resources :artist_songs, only: [:new, :create, :index, :show, :destroy]
  resources :user_songs, only: [:create, :index, :show, :destroy]
  resources :genres, only: [:new, :create, :index, :show, :destroy]
  resources :posts, only: [:new, :create, :index, :destroy]
  resources :follows, only: [:new, :create, :destroy]
  

end
