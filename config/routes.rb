Rails.application.routes.draw do
  get "/" => "users#index"
  resources :users
  resources :sessions,only:[:new,:create,:destroy]
  resources :favorites, only: [:create, :destroy,:index]
  resources :blogs do
    collection do
      post :confirm
    end
  end
end
