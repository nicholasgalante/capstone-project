class UserMeeting < ApplicationRecord
   belongs_to :user
   belong_to :meeting
end
