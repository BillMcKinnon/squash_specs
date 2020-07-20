Rails.application.routes.draw do
  root 'racquets#index'
  resources :racquets, only: [:create, :new]
  get 'racquets/filter_form' => 'racquets#filter_form'
end

