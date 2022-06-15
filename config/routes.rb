Rails.application.routes.draw do
  devise_for :users, controllers: { sessions: 'users/sessions' }

  root to: 'pages#home'


  # Records Controller
  get '/dashboard', to: 'records#dashboard', as: 'dashboard'
  get '/registros', to: 'records#index', as: 'index'
  get '/registros/:id', to: 'records#show', as: 'show'

end
