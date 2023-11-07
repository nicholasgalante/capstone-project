class CreateMentors < ActiveRecord::Migration[6.1]
  def change
    create_table :mentors do |t|

      t.timestamps
    end
  end
end
