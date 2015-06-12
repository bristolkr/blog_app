Rails.application.routes.draw do
  resources :posts
  resources :blog
  resources :comments
  resource :session, :only => [:create, :destroy]

  root 'blog#index'
end
