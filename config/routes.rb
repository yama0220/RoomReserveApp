Rails.application.routes.draw do
  
  get 'static_pages/home'

  devise_for :users, controllers: {
    sessions: "users/sessions",
    registrations: 'users/registrations' 
  }
  resources :users

  # アカウント設定表示用
  get 'user/account'
  get 'user/profile'
  get 'user/profile_edit'
  # resources :user

end
