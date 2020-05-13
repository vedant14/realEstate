class Account < ApplicationRecord
	has_many :users

	validates :subdomain, presence: true

end
