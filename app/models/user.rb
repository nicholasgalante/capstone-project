class User < ApplicationRecord
   has_many :meetings
   has_many :comments
end
