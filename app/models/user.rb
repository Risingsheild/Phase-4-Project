class User < ApplicationRecord
   has_many :tickets
   has_many :events, through: :tickets
   
   validates :username, uniqueness: true

   has_secure_password
end
