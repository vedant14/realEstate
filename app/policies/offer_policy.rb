class OfferPolicy < ApplicationPolicy
  class Scope
    attr_reader :user, :scope

    def initialize(user, scope)
      @user  = user
      @scope = scope
    end
  end


    def index?
   		admin?
  	end

  	def admin?
  		if user.present?
	      admin_types.include?(user.type)
	  	end
    end

end