class CreateUserMeetings < ActiveRecord::Migration[6.1]
  def change
    create_table :user_meetings do |t|
      t.belongs_to :user
      t.belongs_to :meeting
      t.timestamps
    end
  end
end
