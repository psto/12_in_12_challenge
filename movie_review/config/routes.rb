Rails.application.routes.draw do
  resources :reviews
  devise_for :users
  resources :movies

  root to: "movies#index"
end
