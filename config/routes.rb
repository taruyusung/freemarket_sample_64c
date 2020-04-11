Rails.application.routes.draw do
  devise_for :users, controllers: {
    registrations: 'users/registrations'
  }
  root 'tests#index'
  resources :tests
  resources :items, only: [:new, :create]
  
  resources :user_my_page do
    collection do
      get'user_my_page'
    end
  end
    resources :sign_out do
      collection do
        get'sign_out'
      end
  end
  devise_scope :user do
    post 'users/sign_up/complete' => 'users/registrations#complete'
  end
end
