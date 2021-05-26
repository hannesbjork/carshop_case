class SessionsController < ApplicationController
  def create
    @user = User.find_by(email: params[:email])
    
    if !!@user && @user.authenticate(params[:password])
    	session[:user_id] = @user.id
    	redirect_to user_path(@user.id)
    else
    	message = "Something went wrong, make sure your email and password are correct!"
    	redirect_to login_path, notice: message
  	end
  end
  
  def destroy
  	session[:user_id] = nil
   	redirect_to root_path
  end
end
