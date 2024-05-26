Rails.application.routes.draw do
#  get 'welcome/index'
#  For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  resources :products

  get 'register', to: 'users#new'
  post 'register', to: 'users#create'
  get 'login', to: 'logins#new'
  post 'login', to: 'logins#create'
  delete 'logout', to: 'logins#destroy'
  post 'generate', to: 'products#generate'
  delete 'clean', to: 'products#clean'
  get 'dashboard', to: 'products#dashboard'

  root 'products#index'

end
