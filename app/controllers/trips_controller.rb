class TripsController < ApplicationController
  before_filter :authorize
  
  def create
  	trip = Trip.new(trip_params)
    trip.user_id = session[:user_id] 
    if trip.save!
      flash[:notice] = "Trip Added"
      redirect_to user_path(session[:user_id])
    else
      @trip = trip
      render :new, alert: "Trip Addition Failed"
    end
  end

  def destroy
  	trip = Trip.find(params[:id])
    if trip.destroy
      flash[:notice] = "Trip Deleted"
      redirect_to user_path(session[:user_id])
    else
      redirect_to user_path(session[:user_id]), alert: "Trip Deletion Failed"
    end
  end

  def edit
  	@trip = Trip.find(params[:id])
  end

  def new
  	@trip = Trip.new
    @user = User.find(session[:user_id])
  end

  def show
  	@trip = Trip.find(params[:id])
  end

  def update
    trip = Trip.find(params[:id])
    trip.assign_attributes(trip_params)
    if trip.save!
      flash[:notice] = "Trip Edited Successfully"
      redirect_to user_path(session[:user_id])
    else
      @trip = trip
      render :edit, alert: "Edit Failed"
    end
  end

  private

  def trip_params
    params.require(:trip).permit(:first_name, 
                                 :last_name,
                                 :confirmation_code,
                                 :funds_remaining,
                                 :exp_date,
                                 :user_id)
  end
end