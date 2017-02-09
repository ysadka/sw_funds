class StaticsController < ApplicationController

	def homepage
		redirect_to user_path(session[:user_id]) if current_user
	end

	def thankyou
	end
end
