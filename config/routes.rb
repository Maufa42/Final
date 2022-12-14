Rails.application.routes.draw do
  get 'quotes/new'
  resources :quotes
  post 'checkout/create' => 'checkouts#create', as: "checkout_create"
  post "/stripe_webhooks",to:"webhooks#create"
  # get "checkouts", to: "checkouts#show"
  # get "billing", to: "billing#show"

    resources :category do
        resources  :subcategory do
          resources :childs 
        end
    end


  resources :vendors
  resources :bookings
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  # patch '/users', to: "registrations#update"
  # delete '/users', to: "registrations@destroy"
  devise_for :users, controllers: { omniauth_callbacks: 'users/omniauth_callbacks' ,registrations:"registrations"} do
    get '/users/sign_out' => 'devise/sessions#destroy'
    get '/users/edit' => 'devise/sessions#edit'
    # patch 'users/update'=> 'devise/sessions#update'
  end


  # devise_for :users,:controllers=>{registrations:"registrations"} do
  #   get '/users/sign_out' => 'devise/sessions#destroy'
  # end

  resources :events
  root to: 'homes#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
