Rails.application.routes.draw do
  get 'comments/create'

  devise_for :users, controllers: {
  registrations: "users/registrations",
  omniauth_callbacks: "users/omniauth_callbacks"
  }

  root 'topics#index'

  resources :topics do
    resources :comments
  end
end
