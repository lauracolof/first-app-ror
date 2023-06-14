Rails.application.routes.draw do
  devise_for :users
  # http://127.0.0.1:3000/
  root 'pages#home'

  get 'about' => 'pages#about'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
