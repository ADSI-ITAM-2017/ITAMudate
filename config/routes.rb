Rails.application.routes.draw do
   root 'startup#index'
   get 'startup/index'

   get 'registrate'  => 'users#new'
   get 'ingresa' => 'sessions#new'
   post 'ingresa' => 'sessions#create'
   delete 'salir' => 'sessions#destroy'
   resources :users

   get 'agrega'  => 'houses#new' 
   resources :houses
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
