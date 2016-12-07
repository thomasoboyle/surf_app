Rails.application.routes.draw do

  get '/surf_map', to: 'surf_map#index'

  resources :spots

  resources :surf_sessions do
    resources :comments
  end

  root 'surf_sessions#index'

end
