Rails.application.routes.draw do
  root 'site/pages#index'

  devise_for :admins

  namespace :site, path: '/' do
    resource :shopping_cart, path: 'cart', only: [:show, :destroy ]
    resources :shopping_cart_items, path: 'items', only: [:create, :update, :destroy]

    resources :orders, only: [:new, :create, :show]

    resources :categories, only: [:show]
    resources :products, only: [:index, :show]

    resources :collections, only: [:index, :show]

    resources :vendors, only: [:index, :show]
  end

  namespace :admin do
    root 'dashboards#show'

    resources :industries
    resources :vendors

    resources :categories
    resources :products

    resources :collections

    resources :orders, except: [:new, :create, :destroy]
  end
end
# For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
