Rails.application.routes.draw do

  resources :spots

  resources :surf_sessions
  


  get '/spots', to: 'spots#index'

  root 'application#index'

end
