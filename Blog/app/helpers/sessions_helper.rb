module SessionsHelper
	#log in user
	def log_in(user)
		session[:user_id] = user.id
	end

	#return the user if it exist
	def current_user
		@current_user ||= User.find_by(id: session[:user_id])
	end

	#check log in or not
	def logged_in?
		!current_user.nil?
	end

	def log_out
		session.delete(:user_id)
		@current_user = nil
	end
end

