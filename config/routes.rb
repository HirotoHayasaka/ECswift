Rails.application.routes.draw do
  resources :users
  get 'sessions/new'

  get 'users/index'

  get 'wears/index'

  root 'pages#index'
  get 'pages/index'
  get 'wears/index'

  get 'login' => 'sessions#new'
  post 'logout' => 'sessions#destroy'

 resources 'users'
 resources 'sessions'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
