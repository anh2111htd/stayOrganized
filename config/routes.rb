Rails.application.routes.draw do
  resources :tasks
  devise_for :users
  get 'pages/home'
  root 'pages#home'
  # For details onroot 'pages#home' the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
