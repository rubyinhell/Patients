Rails.application.routes.draw do
  resources :patients
  resources :locations , only: [:show]
  root 'patients#index'

  require 'sidekiq/web'
  mount Sidekiq::Web => '/sidekiq'

  #API
  #mount API => '/api'
  #mount V1::API => '/'
  #mount V1::BASE => '/'
  #mount GrapeSwaggerRails::Engine => '/swagger'
end
