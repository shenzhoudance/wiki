Rails.application.routes.draw do
  devise_for :user
 resources :articles
 root 'articles#index'
end
