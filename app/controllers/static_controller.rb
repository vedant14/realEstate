class StaticController < ApplicationController
  def home
    @properties = Property.listed.stared.page(params[:page]).per(4)
  end


  def about
  end

  def contact_us
  end

  def faq
  end

  def not_authorised
    if @company_status != 'disabled'
      redirect_to root_path
    end      
  end
end
