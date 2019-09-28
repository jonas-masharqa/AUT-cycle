Rails.application.routes.draw do
  devise_for :users
  get 'landing/index'

  resources :articles

  root controller: :landing, action: :index

end
