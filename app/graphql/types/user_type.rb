module Types
  class UserType < Types::BaseObject
    field :id, ID, null: false
    field :username, String, null: false
    field :email_address, String, null: false
    field :emergency_contact_name, String, null: false
    field :emergency_number, String, null: false
    field :friends, String, null: false
  end
end
