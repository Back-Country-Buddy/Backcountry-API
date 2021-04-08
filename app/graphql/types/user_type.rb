module Types
  class UserType < Types::BaseObject
    field :id, ID, null: false
    field :username, String, null: false
    field :email_address, String, null: false
    field :emergency_contact_name, String, null: true
    field :emergency_number, String, null: true
  end
end
