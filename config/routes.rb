Rails.application.routes.draw do
  get "/" => "users#index"
  resources :users do
    member do
      get :favo_page
    end
  end

  resources :sessions,only:[:new,:create,:destroy]
  resources :favorites, only: [:create, :destroy]
  resources :blogs do
    collection do
      post :confirm
    end
  end
end
