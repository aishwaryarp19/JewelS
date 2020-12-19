Rails.application.routes.draw do
  get 'contact/index'
  get 'product/index'
  get 'home/index'
  get 'about/index'
  root 'home#index'
  resources :customers
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
