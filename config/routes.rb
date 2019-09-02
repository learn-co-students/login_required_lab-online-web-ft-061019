Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'sessions#new'
  get 'sessions/new', to: 'sessions#new'
  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  post '/logout', to: 'sessions#destroy'
  post '/destroy', to: 'sessions#destroy'

  get 'secrets/show', to: 'secrets#show'
  get 'secrets/secret', to: 'secrets#secret'
end
