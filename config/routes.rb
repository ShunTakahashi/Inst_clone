Rails.application.routes.draw do
  get "/" => "users#index"
  resources :users
  resources :sessions
end
