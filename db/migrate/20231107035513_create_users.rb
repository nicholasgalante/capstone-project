class CreateUsers < ActiveRecord::Migration[6.1]
  def change
    create_table :users do |t|
      t.string :first_name
      t.string :last_name
      t.string :email_address
      t.string :password_digest
      t.string :role
      t.boolean :matched, default: :False
      t.timestamps
    end
  end
end
