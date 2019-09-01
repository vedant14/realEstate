class Property < ApplicationRecord
  include Filterable
  belongs_to :user
  has_many :offers
  attr_writer :current_step

  validates :user_id, presence: true
  validates :address, presence: true
  validates :bedroom, presence: true
  validates :city, presence: true
  # validate :correct_image_types
  validates :unit_no, presence: true
  validates :property_type, presence: true
  validates :carpet_area, presence: true
  validates :furnishing, presence: true
  validates :service, presence: true
  validates :price, presence: true
  validates :pincode, presence: true


  enum status: { Pending: 0, Approved: 1, Rejected: 2}
  has_many_attached :images


  scope :city, -> (city) { where (["city || society_name ILIKE ?", "%#{city}%"])}
  scope :service, -> (service) { where service: service}
  scope :bedroom, -> (bedroom) { where bedroom: bedroom}


  def self.published_by_created
    order("updated_at DESC")
  end


private
  # def correct_image_types

  #   image.each do |image|
  #     if image.attached? && !image.content_type.in?(%w(image/jpeg image/png))
  #       errors.add(:image, 'must be JPEG or PNG.')
  #     elsif image.attached? == false
  #       errors.add(:image, 'required')
  #     end  
  # end  

end    

