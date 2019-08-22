class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable


  has_many :properties
  has_many :offers
  
  validates_presence_of :full_name, :phone
  PHONE_REGEX = /\A[0-9]*\Z/

  validates_format_of :phone, with: PHONE_REGEX

  validates :phone, length: { is: 10 }



  def first_name
  	self.full_name.split.first
  end

  def last_name
  	self.full_name.split.last
  end

end
