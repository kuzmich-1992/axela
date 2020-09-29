class RentedLeasesController < ApplicationController
  respond_to :html, :json, :xml
  
 
  def create
    @rented_lease = current_user.rented_leases.build(rented_leases_params)
    if @rented_lease.save!
      respond_to do |format|
        format.json { head :no_content }
        format.html { redirect_to request.referrer }
      end
    end
  end

  def rented_leases_params
    params.require(:rented_lease).permit(:user_id, :rented_car_id)
  end
end