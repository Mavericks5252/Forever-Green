Rails.application.routes.draw do
  resources :about_us
  resources :products
  get 'home/products'
  get 'home/about'
  get 'home/home'
  
  root to: "projects#index"
  resources :projects
end