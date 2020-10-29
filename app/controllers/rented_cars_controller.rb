class RentedCarsController < ApplicationController
  
  def index
    @rented_cars = RentedCar.all.order('created_at DESC') 
  end

  def new
    @rented_car = RentedCar.new(rented_cars_params)
  end
 
  def create
    @rented_car = current_user.rented_cars.build(rented_cars_params)
    if @rented_car.save!
      respond_to do |format|
        format.json { render json: @rented_car }
        format.html { redirect_to request.referrer }
      end
    else 
      flash.now[:notice] = "We have add photo"
    end
  end

  def destroy
  	@rentedcar = current_user.rented_cars.find_by(params[user_id: user.id])
    @rented_car.destroy
    redirect_to request.referrer || root_url
  end

  def show
    @rented_car = RentedCar.find(params[:id])
    @rented_lease = RentedLease.new rented_car:  @rented_car
    @rented_leases = @rented_car.rented_leases.includes(:rented_car)
  end
  
  def rented_cars_params
  	params.require(:rented_car).permit(:price_per_day, :model, :serie, :location, :avatar)
  end
end
