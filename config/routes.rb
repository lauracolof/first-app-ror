Rails.application.routes.draw do
  get 'users/:username', to: "users#show", as: 'user'
  resources :items
  resources :tweets
  ActiveAdmin.routes(self)
  devise_for :users
  as :user do
    get "signin", to: 'devise/sessions#new'
    delete "signout", to: 'devise/sessions#destroy'
    get "signup", to: 'devise/registration#new'
  end

  # http://127.0.0.1:3000/
  root 'pages#home'

  get 'about' => 'pages#about'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
