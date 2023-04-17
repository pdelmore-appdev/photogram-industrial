Rails.application.routes.draw do
root "photos#index"

# get "/users/:id" => "users/show", as: user
resources :users, only: :show


devise_for :users

  resources :likes
  resources :follow_requests
  resources :comments
  resources :photos

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
