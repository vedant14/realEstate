class CompaniesController < ApplicationController

  before_action :set_company, only: [:edit, :update]
  after_action :verify_authorized


  def index
    @companies = Company.published_by_created.page(params[:page]).per(9)
    authorize @companies
  end

  def new
    @company = Company.new
    authorize @company
  end

  def create
    @company = Company.new(company_params)
    respond_to do |format|
      if @company.save
        format.html { redirect_to request.referrer, notice: 'Great we will contact you shortly!' }
      else
        format.html { redirect_to request.referrer, alert: 'Something is not right here. Please Check Again.' }
      end
    end
    authorize @company
  end  

  def edit
    authorize @company
  end

  def update
    respond_to do |format|
      if @company.update(company_params)
        format.html { redirect_to companies_url, notice: 'Company was successfully updated.' }
        format.json { render :show, status: :ok, location: @company }
      else
        format.html { render :edit }
        format.json { render json: @company.errors, status: :unprocessable_entity }
      end
    end
    authorize @company
  end


  private
    def set_company
      @company = Company.find(params[:id])
    end

    def company_params
      params.require(:company).permit(:name, :subdomain, :user_id)
    end
end

