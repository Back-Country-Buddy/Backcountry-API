module Types
  module Input
    class UserInputType < Types::BaseInputObject
      argument :id, ID, required: false
      argument :username, String, required: false
      argument :email_address, String, required: false
      argument :emergency_contact_name, String, required: false
      argument :emergency_number, String, required: false
      argument :friends, String, required: false
    end
  end
end