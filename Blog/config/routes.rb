Rails.application.routes.draw do
  get 'sessions/new'
  get 'about', to: 'users#about'
  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'

  get '/search', to: 'posts#search'
  get '/search2', to: 'posts#searchtitle'
  get '/success', to: 'users#success'
  root 'users#new'
  resources :posts
  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
