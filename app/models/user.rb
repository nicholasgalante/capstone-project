class User < ApplicationRecord
   has_secure_password
   
   has_many :user_meetings
   has_many :meetings, through: :user_meetings
end
