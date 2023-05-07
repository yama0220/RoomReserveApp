Rails.application.routes.draw do
  
  get 'static_pages/home'

  devise_for :users, controllers: {
    sessions: "users/sessions",
    registrations: 'users/registrations' 
  }
  # resources :users

  # アカウント設定表示用
  get 'users/account_show'
  get 'users/profile_show'
  get 'users/profile_edit'
  patch 'profile_edit', to: 'users#profile_edit'
  # resources :user

end
