class Company < ApplicationRecord
	after_create :create_tenant
	after_destroy :remove_tenant



	validates_presence_of :name
	before_save :downcase_fields
	validates :subdomain, presence: true, uniqueness: true, length: { maximum: 15 }


	SUBDOMAIN_REGEX = /[A-Za-z0-9](?:[A-Za-z0-9\-]{0,61}[A-Za-z0-9])?/

	 enum status: {enabled: 0, disabled: 1}


	validates_format_of :subdomain, with: SUBDOMAIN_REGEX


	def self.published_by_created
		order("created_at DESC")
	end

	def self.disabled_by_admin
	   where(status: 1)
	end




	private
	def create_tenant
		Apartment::Tenant.create(subdomain)
	end
	def remove_tenant
		Apartment::Tenant.drop(subdomain)
	end
	def downcase_fields
	  self.subdomain.downcase!
	end
end