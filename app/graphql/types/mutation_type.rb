module Types
  class MutationType < Types::BaseObject
    # TODO: remove me
    field :create_user, mutation: Mutations::CreateUser
    field :create_tour, mutation: Mutations::CreateTour
  end
end
