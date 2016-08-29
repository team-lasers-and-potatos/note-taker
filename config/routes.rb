Rails.application.routes.draw do

  devise_for :users
  get 'welcome/index'
  get '/notes', to: 'welcome#notes'
  root 'welcome#index'
end
