Rails.application.routes.draw do

  root 'top#check'
  get 'dashboard', to: 'top#dashboard'
  get 'mypage', to: 'top#mypage'

  resources :users, only: [:create]
end
