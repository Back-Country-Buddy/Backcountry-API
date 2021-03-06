class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :username
      t.string :email_address
      t.string :emergency_contact_name, :default => "nil"
      t.string :emergency_number, :default => "nil"
      t.string :friends, :default => "nil"

      t.timestamps
    end
  end
end
