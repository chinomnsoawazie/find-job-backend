Rails.application.routes.draw do
  
  resources :login, only: [:create]
  resources :users

  resources :educations
  resources :certifications
  resources :employments
  resources :memberships
  resources :skills
  resources :preferences
  resources :jobs

  resources :notes
  resources :tasks
end
