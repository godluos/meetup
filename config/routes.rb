Rails.application.routes.draw do
  resources :parties
  devise_for :users
  root "parties#index"
end
