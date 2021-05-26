Rails.application.routes.draw do

  root to: 'pages#home'
  
  resources :users
  resources :sales
  resources :carmodels
  resources :employees
  
  
  get '/login', to: 'sessions#login'
  post '/login', to: 'sessions#create'
  post '/logout', to: 'sessions#destroy'
  get '/logout', to: 'sessions#destroy'

end
