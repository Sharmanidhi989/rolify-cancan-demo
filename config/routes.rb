Rails.application.routes.draw do
  get 'admin/index'
  get 'admin/update'
  resources :grades
  devise_for :users
  get 'home/index'
  root "grades#index"
  get "admin" => "admin#index"
  put "admin/:id" => "admin#update"
  patch "admin/:id" => "admin#update"
  # root 'home#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
