class UsersController < ApplicationController

	def create
		user = User.new(user_params)
 		user.password = params[:password]
 		if user.save
	 		flash[:notice] = "Account Created"
	 		redirect_to login_path
		else
			redirect_to new_user_path alert: "Signup Failed"
		end
	end

	def destroy
  	# user = User.find(params[id])
  	# user.destroy
  end

  def edit
  	# page to change user info
  end

  def new
  	@user = User.new
  end

  def show
  	@user = User.find(params[:id])
  	@trips = @user.trips
  end

  def update
  	# update user information
  end

  private

  def user_params
  	params.require(:user).permit(:first_name, :last_name, :email, :password)
  end
end
