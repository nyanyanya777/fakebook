Rails.application.routes.draw do

  devise_for :users, controllers: {
  registrations: "users/registrations",
  omniauth_callbacks: "users/omniauth_callbacks"
  }

  root 'topics#index'

  resources :users
  resources :relationships

  resources :conversations do
    resources :messages
  end

  resources :topics do
    resources :comments
  end
end
