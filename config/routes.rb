Rails.application.routes.draw do
  # http://127.0.0.1:3000/
  root 'pages#home'

  get 'about' => 'pages#about'
  get 'contact-us' => 'pages#contact'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
