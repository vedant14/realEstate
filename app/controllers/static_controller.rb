class StaticController < ApplicationController
  def home
    @properties = Property.listed.stared.page(params[:page]).per(4)
    @company = Company.find_by_subdomain(request.subdomain)
    $company = @company.name
  end


  def about
  end

  def contact_us
  end

  def faq
  end
end
