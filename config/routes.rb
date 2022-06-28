# frozen_string_literal: true

Rails.application.routes.draw do
  get 'shared/index'
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  resources :truck_types
  resources :storage_types
  resources :staff_designations
  resources :service_categories
  resources :product_categories
  resources :customers
  resources :sales
  resources :service_variants
  resources :product_variants
  resources :services
  resources :products
  resources :trip_fines
  resources :trips
  resources :trucks
  resources :storage_locations
  resources :company_locations
  resources :storage_staffs
  resources :storages
  resources :drivers
  resources :truck_staffs
  resources :truckers
  resources :staffs
  resources :companies
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
