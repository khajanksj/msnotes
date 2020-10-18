Rails.application.routes.draw do
  resources :notes
  resources :course_tags
  resources :subjects
  resources :courses
  root 'web#index'
  get 'web/index'
  get 'web/tut'
  devise_for :users
end
