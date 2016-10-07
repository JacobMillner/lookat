Rails.application.routes.draw do
  resources :morons
  get 'welcome/index'

   root 'welcome#index'
end
