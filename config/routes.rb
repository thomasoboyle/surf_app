Rails.application.routes.draw do

  resources :spots

  resources :surf_sessions

  root 'application#index'

end
