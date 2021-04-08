module Mutations
  class CreateTour < BaseMutation

    def resolve(name: nil, auth_provider: nil)
      Tour.create!(
        date: Types::DatetimeType,
        location: String,
        creator_id: Integer
      )

      # if tour.save
      #  {tour: tour}
      #else
      #error message
      #end
    end
  end
end
