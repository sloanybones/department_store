Rails.application.routes.draw do
  get 'items/index'
  get 'items/show'
  get 'items/new'
  get 'items/edit'
 root "departments#index"
 
 resources :departments do
  resources :items
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
end