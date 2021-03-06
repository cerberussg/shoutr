# frozen_string_literal: true

Rails.application.routes.draw do
  constraints Clearance::Constraints::SignedIn.new do
    root to: 'dashboards#show'
  end
  root to: 'homes#show'
  resources :shouts, only: %i[create show] do
    member do
      post 'like', to: 'likes#create'
      delete 'unlike', to: 'likes#destroy'
    end
  end
  resources :passwords, controller: 'clearance/passwords', only: %i[create new]
  resource :session, only: [:create]

  resources :users, only: %i[create show] do
    resource :password,
             controller: 'clearance/passwords',
             only: %i[create edit update]
  end

  get '/sign_in', to: 'sessions#new', as: 'sign_in'
  delete '/sign_out', to: 'sessions#destroy', as: 'sign_out'
  get '/sign_up', to: 'users#new', as: 'sign_up'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
