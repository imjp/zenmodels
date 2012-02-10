Zenmodels::Application.routes.draw do
	
	devise_for :user, :path => '/', :path_names => { :sign_in => 'login', :sign_out => 'logout', :password => 'secret', :confirmation => 'verification', :unlock => 'unblock', :sign_up => 'register' } do
		get "login", :to => "devise/sessions#new"
		get "logout", :to => "devise/sessions#destroy" 
		resources :profiles
	end
	 
	
	root :to => 'home#index'  
	match '/:id' => 'users#show'
end
