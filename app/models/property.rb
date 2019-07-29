class Property < ApplicationRecord
  belongs_to :user

  enum service: { Pending: 0, Rent: 1, Sell: 2}
  enum status: { Pending: 0, Approved: 1, Rejected: 2}
  enum availability: { ready_to_move: 0, under_construction: 1}
  enum property_type: { residential_apartment: 0, villa: 1, others: 2}
  enum furnishing: { unfurnished: 0, semi_furnished: 1, fully_furnished: 2}
end
