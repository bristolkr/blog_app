Rails.application.routes.draw do
  resources :posts
  resource :session, :only => [:create, :destroy]

  root 'posts#index'
end
