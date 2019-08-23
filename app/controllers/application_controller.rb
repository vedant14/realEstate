class ApplicationController < ActionController::Base

	include DeviseWhitelist
	include Pundit

  protected

	def after_sign_out_path_for(resource_or_scope)
  		request.referrer
	end
end
