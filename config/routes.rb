Rails.application.routes.draw do

  resources :surf_sessions do
    resources :comments
  end

  resources :tags
  
  resources :spots

  resources :attachments


  root 'surf_sessions#index'

end
