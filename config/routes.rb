Rails.application.routes.draw do
  get 'products/', to: 'products#index', as: 'all_products'
  get 'products/:number', to: 'products#show', as: 'product'
  root to: 'home#index', as: 'home'

  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
