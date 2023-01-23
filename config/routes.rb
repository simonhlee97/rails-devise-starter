Rails.application.routes.draw do
  devise_for :users, controllers: {
    sessions: 'users/sessions',
    registrations: 'users/registrations'
  }
  
  root 'pages#home'

  get '/about', to: 'pages#about'
  get '/profile', to: 'profile#index'

end
