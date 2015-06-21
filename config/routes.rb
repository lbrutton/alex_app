Rails.application.routes.draw do
  devise_for :admins
  get    'login'       => 'sessions#new'
  post   'login'       => 'sessions#create'
  delete 'logout'      => 'sessions#destroy'
 
  root 'posts#show'
  resources :posts
  
end
