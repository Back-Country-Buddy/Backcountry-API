module Mutations
  class SignInUser < BaseMutation
    null true

    argument :credentials, Types::AuthProviderCredentialsInput, required: false
    field :token, String, null:true
    field :user, Types::UserType, null: true

    def resolve(credentials: nil)
      return unless credentials

      user = User.find_by email_address: credentials[:email_address]

      return unless user
      return unless user.authenticate(credentials[:password])

      #the following is just placeholder for now, we will need to use a better encryption
      crypt = ActiveSupport::MessageEncryptor.new(Rails.application.credentials.secret_key_base.byteslice(0..31))
      token = crypt.encrypt_and_sign("user-id:#{ user.id }")

      { user: user, token: token }
    end
  end
end