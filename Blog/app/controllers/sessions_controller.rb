class SessionsController < ApplicationController
  def create
	user = User.find_by(email: params[:session][:email].downcase)
	if user && user.authenticate(params[:session][:password])
	# 登入用户，然后重定向到用户的资料页面
		log_in user
		redirect_to root_url
	else
	# 创建一个错误消息
	flash[:danger] = 'Invalid email/password combination' #
	render 'new'
	end
end

  def destroy
  	log_out
  	redirect_to root_url
  end

  def new
  end
end
