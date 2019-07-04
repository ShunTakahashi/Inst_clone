Rails.application.routes.draw do
  get "/" => "users#index"
  resources :users
  resources :sessions,only:[:new,:create,:destroy]
end
