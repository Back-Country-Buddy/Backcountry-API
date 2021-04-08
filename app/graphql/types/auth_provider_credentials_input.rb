module Types
  class AuthProviderCredentialsInput < BaseInputObject
    graphql_username 'AUTH_PROVIDER_CREDENTIALS'

    argument :email_address, String, required: true
    argument :password, String, required: true
  end
end
