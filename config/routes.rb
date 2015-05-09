Rails.application.routes.draw do
  get    'login'       => 'sessions#new'
  post   'login'       => 'sessions#create'
  delete 'logout'      => 'sessions#destroy'
 
  root 'posts#index'
  resources :posts
  
  get "show_posts" => 'posts#show'
end
