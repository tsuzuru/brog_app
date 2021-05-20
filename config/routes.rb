Rails.application.routes.draw do
  
  get 'inquiry/index'
  resources :categories
  
  resources :articles, param: :id do
    resources :article_comments,only:[:create,:destroy]
  end
  
  get 'search' => 'articles#search'
  
  resources :homes, param: :id
  #get 'home/index'  
  # get 'search/search'
  #get '/search', to: 'home#index'
  
  
  devise_for :admins
  root to: 'homes#top'
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
