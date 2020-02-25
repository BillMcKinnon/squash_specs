Rails.application.routes.draw do
  root 'racquets#index'
  resources :racquets, only: [:create, :new]
end
