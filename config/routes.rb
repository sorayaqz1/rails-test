Rails.application.routes.draw do
  resources :articles
  get 'welcome/index'
  #
  root 'welcome#index'

  get 'welcome/home', to: 'welcome#home'
  get 'welcome/about', to: 'welcome#about'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
