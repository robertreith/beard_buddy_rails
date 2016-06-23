Rails.application.routes.draw do
  resources :users, only: [:show, :new, :create]

  get '/search'   => 'search#new', as: :search
  post '/search'  => 'search#create'

  get    'login'  => 'sessions#new'
  post   'login'  => 'sessions#create'
  delete 'logout' => 'sessions#destroy'

  root 'search#new'
end
