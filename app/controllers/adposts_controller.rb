class AdpostsController < ApplicationController
  require 'pry'
  
  def index
    @adposts = Adpost.order('created_at DESC') 
  end

  def new
    @adpost = Adpost.new(adposts_params)
  end
 
  def create
    @adpost = current_user.adposts.build(adposts_params)
    if @adpost.save!
      respond_to do |format|
        format.json { render json: @adpost }
        format.html { redirect_to request.referrer }
      end
    end
  end

  def destroy
  	@adpost = current_user.adposts.find_by(params[user_id: user.id])
    @adpost.destroy
    redirect_to request.referrer || root_url
  end

  def show
    @adpost = Adpost.find(params[:id])
  end

  def adposts_params
  	params.require(:adpost).permit(:price, :year, :model, :serie, :body, :gearbox, :engine_type, :location, :avatar, :avatar_cache)
  end
end