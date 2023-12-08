class CreateApplications < ActiveRecord::Migration[6.1]
  def change
    create_table :applications do |t|
      t.string :application_status, default: "incomplete"
      t.text :application 
      t.timestamps
    end
  end
end
