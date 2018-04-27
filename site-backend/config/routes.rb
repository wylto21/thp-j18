Rails.application.routes.draw do
  root 'static_pages#index', as: 'home'
  get 'signup', to: 'users#new', as: 'signup'
  post 'create', to: 'users#create', as: 'create'
  get '/user/:username', to: 'users#show', as: 'show'
  get '/users/erreur', to: 'users#error', as: 'error'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
