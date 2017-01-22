Rails.application.routes.draw do
  resources :statuses
  resources :tasks
  devise_for :users, controllers: { sessions: "users/sessions" } 
  get 'pages/home'
  root 'tasks#index'
  Rails.application.routes.draw do
  resources :statuses
    resources :tags, only: [:index, :show]
end
resources :tasks do
      member do
          put :change
      end
  end
  # For details onroot 'pages#home' the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
