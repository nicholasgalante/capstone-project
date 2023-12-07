class CreateStudents < ActiveRecord::Migration[6.1]
  def change
    create_table :students do |t|
      t.integer :mentor_id, default: nil
      t.string :school_name
      t.string :degree_type
      t.string :area_of_study
      t.date :expected_graduation
      t.string :application_status, default: "incomplete"
      t.timestamps
    end
  end
end
