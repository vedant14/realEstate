class PropertiesController < ApplicationController
  before_action :set_property, only: [:show, :edit, :update, :destroy]

  def index
    @properties = Property.filter(params.slice(:city, :service, :bedroom))
    @beds = Property.distinct.pluck(:bedroom).reverse
  end

  def show
    @offer = Offer.new
    $propid = @property.id
    $full_name = current_user.full_name if current_user && $full_name.blank?
    $email = current_user.email if current_user && $email.blank?
    $phone = current_user.phone if current_user && $phone.blank?
  end
  
  def image
    respond_to do |format|
      format.html
      format.js
    end
  end

  def new
    @property = Property.new
  end

  def create
    @property = Property.new(property_params)
    @property.user_id = current_user.id
    respond_to do |format|
      if @property.save
        format.html { redirect_to @property, notice: 'Property was successfully created.' }
        format.json { render :show, status: :created, location: @property }
      else
        format.html { render :new }
        format.json { render json: @property.errors, status: :unprocessable_entity }
      end
    end
  end

  def edit
  end

  def update
    respond_to do |format|
      if @property.update(property_params)
        format.html { redirect_to @property, notice: 'Property was successfully updated.' }
        format.json { render :show, status: :ok, location: @property }
      else
        format.html { render :edit }
        format.json { render json: @property.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @property.destroy
    respond_to do |format|
      format.html { redirect_to properties_url, notice: 'Property was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    def set_property
      @property = Property.find(params[:id])
    end

    def property_params
      params.require(:property).permit(:address, :user_id, :society_name, :bedroom, :city,:pincode, :unit_no, :service, :property_type, :super_built_up_area, :carpet_area, :bathroom, :balcony, :furnishing, :total_floors, :on_floor, :availability, :parking, :price, :description, :status, images: [])
    end

    def offer_params
      params.require(:offer).permit(:user_id,:phone,:property_id, :full_name, :email)
    end
end
