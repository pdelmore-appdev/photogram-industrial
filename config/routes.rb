Rails.application.routes.draw do
root "users#show"


devise_for :users

  resources :likes
  resources :follow_requests
  resources :comments
  resources :photos


  get ":username/liked" => "users#liked", as: :liked_photos
  get ":username/feed" => "users#feed", as: :feed
  get ":username/followers" => "photos#following", as: :following
  get ":username/discover" => "users#discover", as: :discover

  get ":username" => "users#show", as: :user

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
