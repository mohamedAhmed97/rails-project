Rails.application.routes.draw do
  get 'cards/show'
  resources :products
  resources :cart_items
  resource  :cards, only:[:show]
  root 'products#index'
  devise_for :users, path: 'users', controllers: { sessions: "users/sessions"}
  devise_for :admins, path: 'admins', controllers: { sessions: "admins/sessions"}
  # eg. http://localhost:3000/admins/sign_in
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
