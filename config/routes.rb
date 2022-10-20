Rails.application.routes.draw do
  get 'home/products'
  get 'home/aboutus'
  get 'home/home'
  
  root "projects#index"
  resources :projects
end