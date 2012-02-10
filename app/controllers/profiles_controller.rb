class ProfilesController < ApplicationController
	def update
		@user = User.find(params[:user_id]) 
		@profile = @user.profile.update_attributes(params[:profile])
		redirect_to edit_user_path(@user), notice: 'Profile was successfully updated.'
	end

	def show
		@user = User.find(current_user.id)
		@profile = Profile.where(:user_id => @user.id)
		
		@title = @user.name + "'s profile"
	end
end
