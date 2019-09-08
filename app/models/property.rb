class Property < ApplicationRecord
  include Filterable
  belongs_to :user
  has_many :offers, dependent: :destroy
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
  # validate :limit_on_featured

  enum status: {Pending: 0, Approved: 1, Rejected: 2}
  enum feature: {unstar: 0, star: 1}

  has_many_attached :images


  scope :city, -> (city) { where (["city || society_name || address || pincode ILIKE ?", "%#{city}%"])}
  scope :service, -> (service) { where service: service}
  scope :bedroom, -> (bedroom) { where bedroom: bedroom}
  scope :status, -> (status) { where status: status}
  scope :feature, -> (feature) { where feature: feature, status: "Approved"}

  def self.published_by_created
    order("created_at DESC")
  end

  # def limit_on_featured 
  #   if Property.where(feature: "star").count > 6 
  #      prop = Property.where(feature: "star").order("updated_at ASC").last
  #      prop.unstar!
  #    end
  # end



  def self.published_by_updated
    order("updated_at DESC")
  end
  def self.listed
    where(status: "Approved")
  end

  def self.stared
    where(feature: "star")
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

