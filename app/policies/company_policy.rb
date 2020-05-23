class CompanyPolicy < ApplicationPolicy
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

    def new? 
      admin?
    end

    def edit?
      admin?
    end

    def update?
      admin?
    end

    def create?
      admin?
    end

    def destroy?
      admin?
    end


    def toggle_status?
      admin?
    end
  	def admin?
  		if user.present?
        if user.present?
          admin_types.include?(user.type)
        end
	  	end
    end

end