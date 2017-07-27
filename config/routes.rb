Rails.application.routes.draw do
  resources :parties do
    resources :post
  end
  devise_for :users
  root "parties#index"
end
