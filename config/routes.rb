Rails.application.routes.draw do
  get 'apps/index'

  resources :apps

  root 'apps#index'
end
