class Property < ApplicationRecord
  include Filterable
  belongs_to :user

  enum service: { No_service:0, rent: 1, sell: 2}
  enum status: { Pending: 0, Approved: 1, Rejected: 2}
  enum availability: { ready_to_move: 0, under_construction: 1}
  enum property_type: { residential_apartment: 0, villa: 1, others: 2}
  enum furnishing: { unfurnished: 0, semi_furnished: 1, fully_furnished: 2}
  has_many_attached :images



  scope :society_name, -> (society_name) { where (["society_name ILIKE ?", "%#{society_name}%"])}
  scope :city, -> (city) { where (["city ILIKE ?", "%#{city}%"])}
  scope :service, -> (service) { where service: service}

end