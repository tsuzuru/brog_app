Rails.application.routes.draw do
  
  get 'inquiry/index'
  get 'search' => 'articles#search'
  resources :categories
  resources :homes, param: :id, only:[:index]
  resources :articles, param: :id do
    resources :article_comments,only:[:create,:destroy]
  end
  
  devise_for :admins
  root to: 'homes#top'
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
