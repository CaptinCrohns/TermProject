Rails.application.routes.draw do
  root to: 'pages#index', as: 'home'

  get 'pages/shop', to: 'pages#shop', as: 'store'

  get 'products/featured', to: 'products#featured', as: 'featured'

  get 'pages/contact'

  get 'pages/about'

   get 'products/', to: 'products#index', as: 'all_products'
  # get 'products/:number', to: 'products#show', as: 'product'
   get  'categories', to: 'home#index', as: 'categories'

  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
