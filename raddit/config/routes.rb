Rails.application.routes.draw do
  devise_for :users
  root 'links#index'
  resources :links
end
