class OffersController < ApplicationController
  def new
  end
  def index
    @offers = Offer.all
  end
  def create
    @offer = Offer.new(offer_params)
    @offer.property_id = $propid
    @offer.uniqueid = current_user.id if current_user



    respond_to do |format|
      if @offer.save
        format.html { redirect_to request.referrer, notice: 'Great we will contact you shortly' }
      else
        format.html { redirect_to request.referrer, alert: 'Something is not right here. Please Check Again.' }
      end
    end
  end  


  private
    def offer_params
      params.require(:offer).permit(:user_id,:phone,:property_id, :full_name, :email)
    end
end
