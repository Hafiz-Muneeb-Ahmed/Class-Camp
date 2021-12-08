Rails.application.routes.draw do
  resources :children
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  devise_for :parents
  root to: 'pods#index'
  get '/pods', to: 'pods#index'
  resources :teachers, only: [:index]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
