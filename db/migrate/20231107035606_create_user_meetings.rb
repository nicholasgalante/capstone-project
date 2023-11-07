class CreateUserMeetings < ActiveRecord::Migration[6.1]
  def change
    create_table :user_meetings do |t|
      t.integer :meeting_id
      t.integer :user_id
      t.boolean :confirmed
      t.timestamps
    end
  end
end
