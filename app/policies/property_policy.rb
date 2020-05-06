class PropertyPolicy < ApplicationPolicy
  class Scope
    attr_reader :user, :scope

    def initialize(user, scope)
      @user  = user
      @scope = scope
    end

  end 

    
  	def new?
      true
  	end
    def show?
      return true if record.status == "Approved" || user_or_admin
    end

  	def create?
  		new?
  	end

  	def edit?
	  	return true if (user.present? && record.status != "Approved") || admin?
  	end

  	def update?
      edit?
  	end


    def toggle_status?
      admin?
    end
    
    def toggle_featured?
      admin?
    end
    def list?
      admin?
    end

    def unlist?
      admin?
    end

    def view_properties?
      admin?
    end

  	def destroy?
	   	return true if (record.status != "Approved") 
	  end

    
  protected
  
    def user_or_admin
      record.user_id == user.id || admin?
    end

 	  def admin?
      if user.present?
        admin_types.include?(user.type)
      end
    end
end