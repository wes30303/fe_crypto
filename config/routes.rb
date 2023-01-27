Rails.application.routes.draw do
  root 'welcome#index'
  resources :sign_up
  resources :dashboard
  resources :about_me
  resources :pricing
  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'
end
