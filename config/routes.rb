Rails.application.routes.draw do
  root 'welcome#index'
  resources :login
  resources :sign_up
end
