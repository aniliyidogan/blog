Rails.application.routes.draw do
  root 'hellos#index'
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'

  devise_for :users do
    get '/users/sign_out' => 'devise/sessions#destroy'
  end

  resources :tags
  resources :posts do
    resources :comments
  end

end
