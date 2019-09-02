class Offer < ApplicationRecord
  belongs_to :property
  include Filterable

  validates_presence_of :property_id, :email, :full_name, :phone

  PHONE_REGEX = /\A[0-9]*\Z/
  
  scope :q, -> (q) { where (["full_name || email || phone ILIKE ?", "%#{q}%"])}
  
  validates_format_of :phone, with: PHONE_REGEX
  validates :phone, length: { is: 10 }
  after_save :change_defaults

  def self.published_by_created
    order("created_at DESC")
  end

protected 
	def change_defaults
		$full_name = self.full_name
		$email = self.email
		$phone = self.phone
	end  
end



