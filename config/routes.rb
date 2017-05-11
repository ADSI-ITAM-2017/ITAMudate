Rails.application.routes.draw do
  #get 'properties/index'

  #get 'properties/show'

  #get 'properties/new'

  #get 'properties/create'

  #get 'properties/edit'

  #get 'properties/update'

  #get 'properties/destroy'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'owners#inicio'

  resources :properties

  get 'signup'  => 'owners#new'
  resources :owners

  get 'inicio' => 'owners#inicio'

  get '/login' => 'sessions#new'
  post 'login' => 'sessions#create'

  delete 'logout' => 'sessions#destroy'
end
