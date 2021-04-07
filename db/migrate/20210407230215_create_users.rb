class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :username
      t.string :email_address
      t.string :emergency_contact_name
      t.string :emergency_number

      t.timestamps
    end
  end
end
