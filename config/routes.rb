Rails.application.routes.draw do
  resources :referrals

  devise_for :users
  root "pages#home"
end
