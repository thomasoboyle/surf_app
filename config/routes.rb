Rails.application.routes.draw do

  resources :spots

  get '/spots', to: 'spots#index'

  root 'application#index'

end
