Rails.application.routes.draw do

  resources :spots

  resources :surf_sessions do
    resources :comments
  end

  root 'application#index'

end
