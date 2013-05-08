PwnedIt::Application.routes.draw do
	root :to => "pages#home"
	get "pages/home"
	get "pages/about"
	get "pages/help"
	resources :posts
	resources :users

end
