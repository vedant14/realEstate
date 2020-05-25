class ApplicationController < ActionController::Base

	include DeviseWhitelist
	include Pundit
	rescue_from Pundit::NotAuthorizedError, with: :user_not_authorized
	before_action :get_company, :prevent_disabled

	def get_company
		if request.subdomain.present?
		    @company = Company.find_by_subdomain(request.subdomain)
	    	@company_name = @company.name
			@company_status = @company.status 
	    else
	    	@company_name = Admin 
	    end
    end

	def prevent_disabled 
		if request.subdomain.present?
			if @company_status == 'disabled'
				redirect_to(not_authorised_url)
			end
		end	
	end

  protected
	def after_sign_out_path_for(resource_or_scope)
  		request.referrer
	end
	def user_not_authorized
      flash[:alert] = "You are not authorized to access this page."
      redirect_to(request.referrer || root_path)
    end
end
