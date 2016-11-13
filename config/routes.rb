Rails.application.routes.draw do

  resources :surf_sessions do
    resources :spots
  end


  get '/spots', to: 'spots#index'

  root 'application#index'

end
