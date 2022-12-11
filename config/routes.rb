Rails.application.routes.draw do
  get 'explore/index'
  get 'profile/index'
  resources :posts, only: [:index, :create]
  resources :profile, only: [:index]
  resources :explore, only: [:index]
  root "posts#index"
  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
