# -*- encoding : utf-8 -*-
Rosemary::Application.routes.draw do
  root to: 'home#index'
  get 'about_us', to: 'contents#about_us', as: :about_us
  get 'business_areas', to: 'contents#business_areas', as: :business_areas
  get 'human_resources', to: 'contents#human_resources', as: :human_resources
  get 'contact_us', to: 'contents#contact_us', as: :contact_us
  resources :articles
  resources :real_estate_projects
  namespace :admin do
    root :to => 'dashboard#index'
    get 'dashboard', to: 'dashboard#index', as: :dashboard
    resources :articles
    resources :attachments
    resources :real_estate_projects
    resource :profile do
      get 'edit_password'
      post 'update_password'
    end
    match 'signin', to: 'sessions#new', as: :signin, via: [:get]
    match 'signin', to: 'sessions#create', as: :signin, via: [:post]
    match 'signout', to: 'sessions#destroy', as: :signout
  end
end
