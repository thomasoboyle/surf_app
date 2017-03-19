Rails.application.routes.draw do


  root 'surf_sessions#index'

  resources :surf_sessions do
    resources :comments
  end

  resources :tags
  resources :spots
  resources :attachments
  resources :users
  
  get        '/sign_up', to: 'users#new'
  get        '/login',   to: 'sessions#new'
  post       '/login',   to: 'sessions#create'
  delete     '/logout',  to: 'sessions#destroy'

end
