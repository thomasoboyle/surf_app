Rails.application.routes.draw do

  resources :spots

  resources :surf_sessions do
    resources :comments
  end

  root 'surf_sessions#index'

end
