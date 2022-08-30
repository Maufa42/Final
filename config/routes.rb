Rails.application.routes.draw do
  post 'checkout/create' => 'checkouts#create', as: "checkout_create"
  # get "checkouts", to: "checkouts#show"
  # get "billing", to: "billing#show"
  resources :vendors
  resources :bookings
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  devise_for :users, controllers: { omniauth_callbacks: 'users/omniauth_callbacks' ,application: 'application' }
  resources :events
  root to: 'homes#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
