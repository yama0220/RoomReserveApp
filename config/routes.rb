Rails.application.routes.draw do

  devise_for :users, controllers: {
    sessions: "users/sessions",
    registrations: 'users/registrations'
  }

  # アカウント設定表示用
  get 'users/account_show'
  get 'users/profile_show'
  get 'users/profile_edit'
  patch 'users/profile_show', to: 'users#update'

  # Room用
  get 'rooms/home'
  get 'rooms/result'
  get 'rooms/search'
  resources :rooms
  
end
