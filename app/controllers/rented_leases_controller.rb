class RentedLeasesController < ApplicationController
  
  def index
    @rented_leases = RentedLease.order('created_at DESC') 
  end

  def new
    @rented_car = RentedLease.new
  end
 
  def create
    @rented_car = current_user.rented_leases.build
    if @rented_lease.save!
      respond_to do |format|
        format.json { render json: @rented_car }
        format.html { redirect_to request.referrer }
      end
    end
  end

  def show
    @rented_lease = RentedLease.find(params[:id])
  end
end