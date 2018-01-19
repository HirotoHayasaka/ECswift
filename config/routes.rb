Rails.application.routes.draw do
  
  get 'wears/new'
  get 'wears/search'
  resources :users
  resources :wears
  get 'sessions/new'

  get 'users/show'
  root 'pages#index'
  get 'pages/index'
  get 'wears/index'
  get 'pages/shop'

  get 'wears/show'


  get 'login' => 'sessions#new'
  post 'logout' => 'sessions#destroy'

 resources 'users'
 resources 'sessions'

 get 'wear/favorites'
 get '/favorites/index' 
 post '/favorites', to: 'favorites#create'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
