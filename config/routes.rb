Rails.application.routes.draw do
  devise_for :users
  get "/landings", to: "landings#index"
  root to: 'landings#index'
  resources :products do
    resources :reviews
  end
end
