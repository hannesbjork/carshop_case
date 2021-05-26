module ApplicationHelper

	def logged_in?
		!!session[:user_id]
	end
	
	def auth_level
		@auth_level = 0
		@auth_level ||= User.find_by_id(session[:user_id]).employee.auth_level if !!session[:user_id]
	end
	
	def current_user
		@current_user ||= User.find_by_id(session[:user_id]) if !!session[:user_id]
	end
end
