class PropertiesController < ApplicationController
  before_action :set_property, only: [:show, :edit, :update, :destroy, :list, :unlist, :toggle_status, :toggle_featured]
  after_action :verify_authorized, except: [:index]
  before_action :authenticate_user!, only: [:create, :destroy, :new, :edit, :update]


  def index
    @properties = Property.filter(params.slice(:city, :service, :bedroom)).published_by_updated.listed.page(params[:page]).per(9)
  end

  def view_properties
    @properties = Property.filter(params.slice(:city, :service, :bedroom, :status, :feature)).published_by_created.page(params[:page]).per(20)
    authorize @properties
  end

  def show
    @offer = Offer.new
    @offers = @property.offers.published_by_created.page(params[:page]).per(5)
    $propid = @property.id
    $full_name = current_user.full_name if current_user && $full_name.blank?
    $email = current_user.email if current_user && $email.blank?
    $phone = current_user.phone if current_user && $phone.blank?
    authorize @property
  end


  def toggle_status
    if @property.Rejected?
        @property.Approved! 
        {notice: 'Property has been listed'}
    else
        @property.Rejected!
        { notice: 'Property has been Un-listed' }  
    end
    redirect_to request.referrer
    authorize @property
  end

  def toggle_featured
    if @property.unstar?
        @property.star!
        { notice: 'Property is now featured.'}
        { alert: "Only six starred properties will be displayed"}
    else
        @property.unstar!
        { notice: 'Property is now removed from featured'}
    end
    redirect_to request.referrer
    authorize @property
  end


  def list 
    @property.Approved!
    redirect_to request.referrer 
    { notice: 'Property has been listed' }
    authorize @property
  end

  def unlist
    @property.Rejected!
    redirect_to request.referrer 
    { notice: 'Property has been listed' }
    authorize @property
  end


  def new
    @property = Property.new
    authorize @property
  end

  def create
    @property = Property.new(property_params)
    if @property.user_id?
      @property.user_id == current_user.id
    end
    respond_to do |format|
      if @property.save
        format.html { redirect_to @property, notice: 'Property was successfully created.' }
        format.json { render :show, status: :created, location: @property }
      else
        format.html { render :new }
        format.json { render json: @property.errors, status: :unprocessable_entity }
      end
    end
    authorize @property
  end

  def edit
    authorize @property
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
    authorize @property
  end

  def destroy
    @property.destroy
    respond_to do |format|
      format.html { redirect_to properties_url, notice: 'Property was successfully destroyed.' }
      format.json { head :no_content }
    end
    authorize @property
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
