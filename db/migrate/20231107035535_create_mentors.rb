class CreateMentors < ActiveRecord::Migration[6.1]
  def change
    create_table :mentors do |t|
      t.string :company_name
      t.string :status
      t.timestamps
    end
  end
end
