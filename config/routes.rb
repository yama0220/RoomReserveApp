Rails.application.routes.draw do
  devise_for :users
  resources  :users
  get 'static_pages/home'

  # devise_scope :user do
  #   get '/users/sign_out' => 'devise/sessions#destroy'
  # end

end
