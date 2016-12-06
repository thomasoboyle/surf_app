Rails.application.routes.draw do

  get '/surf_map', to: 'surf_map#surf_map'

  resources :spots

  resources :surf_sessions do
    resources :comments
  end

  root 'surf_sessions#index'

end
