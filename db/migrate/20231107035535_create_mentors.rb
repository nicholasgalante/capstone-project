class CreateMentors < ActiveRecord::Migration[6.1]
  def change
    create_table :mentors do |t|
      t.string :company_name
      t.string :job_title
      t.string :application_status, default: "incomplete"
      t.timestamps
    end
  end
end
