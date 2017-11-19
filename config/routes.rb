Rails.application.routes.draw do
# resources :categories
  root to: 'pages#index', as: 'home'



  get 'pages/contact'

  get 'pages/about'

   get 'products/', to: 'products#shop', as: 'all_products'
   get 'products/:number', to: 'products#show', as: 'product'
  get 'products/featured', to: 'products#featured', as: 'featured'

   get  'categories', to: 'categories#index', as: 'all_categories'
    get  'categories/:number', to: 'categories#show', as: 'category'

  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
