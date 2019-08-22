class Offer < ApplicationRecord
  belongs_to :property
  belongs_to :user

  validates_presence_of :user_id, :property_id
  validates :phone, length: { is: 10 }
  PHONE_REGEX = /\A[0-9]*\Z/
  validates_format_of :phone, with: PHONE_REGEX
  

  before_create :create_unique_id

  protected
	  def create_unique_id
		self.uniqueid = user_id.to_s + property_id.to_s
		self.uniqueid.to_i
	  end
end
