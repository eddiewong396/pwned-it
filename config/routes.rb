PwnedIt::Application.routes.draw do
	root to: 'pages#home'
	
	resources :posts
	resources :users
	
	#get "pages/home"
	#get "pages/about"
	#get "pages/contact"
	#get "pages/help"
	
	match '/help', to: 'pages#help',	via: 'get'
	match '/about', to: 'pages#about',	via: 'get'
	match '/contact', to: 'pages#contact',	via: 'get'
	


end
