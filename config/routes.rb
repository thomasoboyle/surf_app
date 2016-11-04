Rails.application.routes.draw do

  root 'application#index'

  get '/spots', to: 'spots#index'
end
