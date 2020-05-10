Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  get 'carts/show'
  resources :products
  resources :cart_items
  resource  :carts, only:[:show]
  root 'products#index'
  devise_for :users, path: 'users', controllers: { sessions: "users/sessions"}
  devise_for :admins, path: 'admins', controllers: { sessions: "admins/sessions"}
  # eg. http://localhost:3000/admins/sign_in
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
