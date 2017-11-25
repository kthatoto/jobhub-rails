Rails.application.routes.draw do

  get 'dashboard', to: 'top#dashboard'
  get 'mypage', to: 'top#mypage'
end
