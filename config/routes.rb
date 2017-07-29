Rails.application.routes.draw do
  resources :parties do
    resources :posts
  end
  devise_for :users
  root "parties#index"
end
