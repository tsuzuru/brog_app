Rails.application.routes.draw do
  
  resources :categories
  resources :articles
  resources :article_comments,only:[:create,:destroy]
  devise_for :admins
  root to: 'homes#top'
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
