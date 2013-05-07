PwnedIt::Application.routes.draw do
  get "pages/home"
  get "pages/help"
  resources :posts
  resources :users
  
end
