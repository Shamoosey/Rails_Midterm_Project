# frozen_string_literal: true

Rails.application.routes.draw do
  resources :breweries, only: :show
  resources :customer, only: :show
  resources :beers, only: :show

  root to: 'breweries#index'

  get '/pages/:page' => 'pages#show'
  get 'breweries/:id', to: 'breweries#show', id: /\d+/
  get 'customer', to: 'customer#index'
  get 'customer/:id', to: 'customer#show', id: /\d+/
  get 'beers/:id', to: 'beers#show', id: /\d+/
end
