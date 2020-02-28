# frozen_string_literal: true

Rails.application.routes.draw do
  get 'beers/show'
  resources :breweries, only: :show
  root to: 'breweries#index'

  get 'breweries/:id', to: 'breweries#show', id: /\d+/
end
