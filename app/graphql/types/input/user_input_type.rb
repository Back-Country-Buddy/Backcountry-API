module Types
  module Input
    class UserInputType < Types::BaseInputObject
      argument :id, ID, required: false
      argument :username, String, required: true
      argument :email_address, String, required: true
      argument :emergency_contact_name, String, required: true
      argument :emergency_number, String, required: true
      argument :friends, String, required: true
    end
  end
end