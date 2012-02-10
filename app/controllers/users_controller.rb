class UsersController < ApplicationController 	
	def show
		@user = User.find(params[:id])
	end	 
	
	def edit	
    @user = User.find(current_user.id) 
		@portfolio = @user.profile
		redirect_to root_url unless current_user == @user

		@title = 'Editing ' + @user.name
	end
end
