class SessionsController < ApplicationController

	def create
		user = User.find_by_email(params[:email])
		if user.password == params[:password]
			session[:user_id] = user.id
			flash[:notice] = "Login Successful"
			redirect_to user_path(id: user.id)
		else
			redirect_to login_path, alert: "Login Failed"
		end
	end

	def destroy
		session[:user_id] = nil
		redirect_to login_path, flash: "Logout Successful"
	end

	def new
	end
end
