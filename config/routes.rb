Rails.application.routes.draw do

  root 'application#check'
  get 'dashboard', to: 'top#dashboard'
  get 'mypage', to: 'top#mypage'

  resources :users, only: [:create]
  resources :issues, only: [:show, :create]
  resources :challenges, only: [:create]
end
