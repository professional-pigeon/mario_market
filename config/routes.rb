Rails.application.routes.draw do
  get "/landings", to: "landings#index"
  root to: 'landings#index'
  resources :products do
    resources :reviews
  end
end
