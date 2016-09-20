class TripsController < ApplicationController
  before_filter :authorize
  
  def create
  	trip = Trip.create(params[:trip])
    if trip

    else
      # alert: "Trip Creation Failed"
    end
  end

  def destroy
  	# delete trip
  end

  def edit
  	# page to change trip info
  end

  def new
  	@trip = Trip.new
  end

  def show
  	@trip = Trip.find(params[:id])
  end

  def update
  	# update trip information
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