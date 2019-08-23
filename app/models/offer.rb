class Offer < ApplicationRecord
  belongs_to :property

  validates_presence_of :property_id, :email, :full_name, :phone

  PHONE_REGEX = /\A[0-9]*\Z/

  validates_format_of :phone, with: PHONE_REGEX

  validates :phone, length: { is: 10 }

	after_save :change_defaults

	protected 


	def change_defaults
		$full_name = self.full_name
		$email = self.email
		$phone = self.phone
	end  
end



