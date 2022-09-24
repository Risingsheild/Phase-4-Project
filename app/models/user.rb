class User < ApplicationRecord
   has_many :reservations
   has_many :campsites, through: :reservations
   
   validates :username, uniqueness: true

   has_secure_password
end
