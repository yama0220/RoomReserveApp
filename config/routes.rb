Rails.application.routes.draw do

  devise_for :users
  resources  :users
  get 'static_pages/home'

end
