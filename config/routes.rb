Rails.application.routes.draw do
  root 'homes#top'
  devise_for :users
  get 'homes/about' => 'homes#about'

  resources :users, only: [:show,:index,:edit,:update]
  resources :books
end

