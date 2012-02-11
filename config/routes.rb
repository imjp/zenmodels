Zenmodels::Application.routes.draw do
	
	devise_for :users, :path => '/', :path_names => { :sign_in => 'login', :sign_out => 'logout', :password => 'secret', :confirmation => 'verification', :unlock => 'unblock', :sign_up => 'register' } do
		get "/register", :to => "devise/registrations#new"
		get "/edit", :to => "devise/registrations#edit"
		get "/login", :to => "devise/sessions#new"
		get "/logout", :to => "devise/sessions#destroy" 
	end 
	
	root :to => 'home#index'  
	match '/:id' => 'users#show'
end
