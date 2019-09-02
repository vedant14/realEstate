class ApplicationController < ActionController::Base

	include DeviseWhitelist
	include Pundit
	rescue_from Pundit::NotAuthorizedError, with: :user_not_authorized

  protected

	def after_sign_out_path_for(resource_or_scope)
  		request.referrer
	end



	def user_not_authorized
      flash[:alert] = "You are not authorized to access this page."
      redirect_to(request.referrer || root_path)
    end
end
