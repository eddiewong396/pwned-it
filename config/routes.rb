PwnedIt::Application.routes.draw do
	#get 'users/new'
	root to: 'pages#home'
	
	resources :posts
	resources :users
	
	match '/signup',	to: 'users#new',	via: 'get'
	match '/help',	to: 'pages#help',	via: 'get'
	match '/about',	to: 'pages#about',	via: 'get'
	match '/contact',	to: 'pages#contact',	via: 'get'
end
