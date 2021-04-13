module Types
  class MutationType < Types::BaseObject
    field :add_user, mutation: Mutations::AddUser
    field :update_user, mutation: Mutations::UpdateUser
  end
end
