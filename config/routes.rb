Rails.application.routes.draw do


  get 'welcome/index'
  get '/notes', to: 'welcome#notes'
  root 'welcome#index'
end
