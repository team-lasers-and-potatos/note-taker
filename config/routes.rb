Rails.application.routes.draw do

  get 'notes/index'

  devise_for :users
  resources :notes
  get 'welcome/index'
  root 'welcome#index'
end
