Rails.application.routes.draw do
  get 'cards/show'
  # get 'shops/index'
  # get 'shops/show'
  resources :products
  resources :shops, only:[:index, :show]
  resources :cart_items
  resource  :cards, only:[:show]
  root 'shops#index'
  devise_for :users, path: 'users', controllers: { sessions: "users/sessions"}
  devise_for :admins, path: 'admins', controllers: { sessions: "admins/sessions"}
  # eg. http://localhost:3000/admins/sign_in
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
