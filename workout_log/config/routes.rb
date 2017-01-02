Rails.application.routes.draw do
  root 'workouts#index'
  resources :workouts do
    resources :exercises
  end
end
