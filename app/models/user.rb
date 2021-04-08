class User < ApplicationRecord
  has_secure_password

  validates_presence_of :username,
                        :emergency_contact_name,
                        :emergency_number
  validates :email_address, presence: true, uniqueness: true
  has_many :tour_users
  has_many :tours, through: :tour_users
  has_many :plans, through: :tours
end
