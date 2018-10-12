Rails.application.routes.draw do
  root 'surf_sessions#index'

  resources :surf_sessions do
    resources :comments
  end

  resources :tags
  resources :spots
  resources :attachments
  resources :users do
    resources :surfboards
  end

  namespace :api do
    namespace :v1 do
      resources :spots
    end
  end

  get        '/sign_up', to: 'users#new'
  get        '/login',   to: 'user_sessions#new'
  post       '/login',   to: 'user_sessions#create'
  delete     '/logout',  to: 'user_sessions#destroy'
end
