class User < ApplicationRecord
   has_secure_password

   has_many :user_meetings
   has_many :meetings, through: :user_meetings
   has_one :student, class_name: 'User', foreign_key: :mentor_id, dependent: :destroy
   belongs_to :mentor, class_name: 'User', optional: true

   validates :first_name, presence: true, length: { maximum: 25 }
   validates :last_name, presence: true, length: { maximum: 25 }
   validates :email_address, presence: true, length: { maximum: 255 },
                             format: { with: /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i },
                             uniqueness: { case_sensitive: false }
   validates :type, inclusion: { in: ['student', 'mentor'] }
   validates :password_digest, presence: true, length: { minimum: 6 }
end
aq