Rails.application.routes.draw do
  root 'tests#index'

  resources :tests , only: [:create,]
  
end