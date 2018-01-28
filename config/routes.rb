Rails.application.routes.draw do

  get 'recentclicks/index'

  get 'wears/new'
  get 'wears/search'
  get 'wears/link'
  get 'wears/destroy'
  get 'wears/update'
  get 'wears/save'
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
 get '/favorites/destroy'
 post '/favorites/destroy'
 get '/favorites/index'
 get 'favorites/create_from_search'
 post '/favorites', to: 'favorites#create'
 post '/recentclicks', to: 'recentclicks#create'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
