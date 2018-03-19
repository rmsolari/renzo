Rails.application.routes.draw do
  devise_for :users
  resources :entries
  resources :entries do
    resources :comments
  end
  get 'statics_pages/home'

  get 'statics_pages/about'

  root 'entries#index'
end
