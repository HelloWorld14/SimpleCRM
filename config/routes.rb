Rails.application.routes.draw do
  resources :customers
  root 'home#index'
end
