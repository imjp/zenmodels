class ProfilesController < ApplicationController 
  def show
    @profile = Profile.find(params[:id])
  end
 
  def new
    @profile = Profile.new
  end
 
  def edit
    @profile = Profile.find(params[:id])
  end
 
  def create
    @user = current_user
    @profile = @user.build_profile(params[:profile])
  end
 
  def update
    @profile = Profile.find(params[:id])
  end
 
  def destroy
    @profile = Profile.find(params[:id])
    @profile.destroy
	  session[:profile_id] = nil
  end
	
  protected
    def record_not_found
      flash[:error] = 'The profile you requested could not be found.'
    end
end
