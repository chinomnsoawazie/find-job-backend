Rails.application.routes.draw do
  
  resources :login, only: [:create]
  resources :users

  resources :educations
  resources :certifications
  resources :employments
  resources :memberships, only: [:create, :update, :destroy]
  resources :skills, only: [:create, :update, :destroy]
  resources :preferences, only: [:create, :update, :destroy]
  resources :jobs, only: [:create, :update, :destroy]

  resources :notes, only: [:create, :update, :destroy]
  resources :tasks, only: [:create, :update, :destroy]

  get 'apikeys', :to => 'users#jobs_api_keys'


end
