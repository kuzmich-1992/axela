class RentedLeasesController < ApplicationController
  helper_method :not_rented
  
  def index
    @rented_leases = RentedLease.order('created_at DESC') 
  end

  def new
    @rented_lease = RentedLease.new(rented_leases_params)
  end
 
  def create
    @rented_lease = current_user.rented_leases.build(rented_leases_params)
    if @rented_lease.save!
      respond_to do |format|
        format.json { render json: @rented_lease }
        format.html { redirect_to request.referrer }
      end
    end
  end

  def show
    @rented_lease = RentedLease.find(params[:id])
  end

  def rented_leases_params
    params.require(:rented_lease).permit(:user_id, :rented_car_id)
  end
end