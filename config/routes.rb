Rails.application.routes.draw do
  get 'search/index'

  resources :boots
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root to: "boots#index"
end
