Rails.application.routes.draw do
  resources :posts
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  
  root to: 'pages#home'
  
  resources :users
  resources :sales
  resources :carmodels
  resources :employees
  
  
  resources :login
  
  resources :sessions, only: [:create]

end
