module Mutations
  class CreateUser < BaseMutation
    class AuthProviderSignupData < Types::BaseInputObject
      argument :credentials, Types::AuthProviderCredentialsInput, required: false
    end

    argument :username, String, required: true
    argument :auth_provider, AuthProviderCredentialsInput, required: false

    type Types::UserType

    def resolve(name: nil, auth_provider: nil)
      User.create!(
        username: username,
        email_address: auth_provider&.[](:credentials)&.[](:email_address),
        password: auth_provider&.[](:credentials)&.[](:password)
      )
    end
  end
end
