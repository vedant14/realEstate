class Company < ApplicationRecord
	after_create :create_tenant


	validates_presence_of :name, :subdomain
	before_save :downcase_fields

	SUBDOMAIN_REGEX = /[A-Za-z0-9](?:[A-Za-z0-9\-]{0,61}[A-Za-z0-9])?/



	validates_format_of :subdomain, with: SUBDOMAIN_REGEX


	def self.published_by_created
		order("created_at DESC")
	end



	private
	def create_tenant
		Apartment::Tenant.create(subdomain)
	end
	def downcase_fields
	  self.subdomain.downcase!
	end
end






