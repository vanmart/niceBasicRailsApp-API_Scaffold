Rails.application.routes.draw do

  resources :parkings
  mount RailsAdmin::Engine => '/dashboard', as: 'rails_admin'
  mount APINAME::Root => '/apiname'


  devise_for :users
  root to: "home#landing"

  get 'home/landing'
  get 'home/welcome'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
