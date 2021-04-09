module Types
  module Input
    class UserInputType < Types::BaseInputObject
      argument :username, String, required: true
      argument :email_address, String, required: true
    end
  end
end
