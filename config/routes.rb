Rails.application.routes.draw do

  mount LetterOpenerWeb::Engine, at: "/letter_opener" if Rails.env.development?


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
