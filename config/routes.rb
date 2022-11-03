Rails.application.routes.draw do
  resources :users
  resources :about_us
  resources :products
  get 'home/products'
  get 'home/about'
  get 'home/home'
  
  root to: 'home#home'
  resources :projects
  get 'settings/unsubscribe'
  patch 'settings/update'
end