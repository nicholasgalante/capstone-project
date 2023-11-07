class CreateStudents < ActiveRecord::Migration[6.1]
  def change
    create_table :students do |t|
      t.integer :mentor_id
      t.string :school_name
      t.string :degree_type
      t.string :area_of_study
      t.date :expected_graduation
      t.string :status
      t.timestamps
    end
  end
end
