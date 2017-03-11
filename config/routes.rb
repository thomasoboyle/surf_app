Rails.application.routes.draw do

  root 'surf_sessions#index'

  get  '/sign_up', to: 'users#new'

  resources :surf_sessions do
    resources :comments
  end

  resources :tags
  
  resources :spots

  resources :attachments



end
