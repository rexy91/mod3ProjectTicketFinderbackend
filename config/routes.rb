Rails.application.routes.draw do
  resources :tickets
  resources :reviews


  get 'users/:id', to: 'users#showOneUser'
  
  patch '/users/:id', to: 'users#update'
  resources :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html


  # post '/sessions', to: 'sessions#create'
  # delete '/sessions/:id', to: 'sessions#destroy'
  # patch '/sessions/:id', to: 'sessions#update'



end
