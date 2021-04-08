module Types
  class TourType < Types::BaseObject
    field :id, ID, null: false
    field :date, Types::DatetimeType, null: false
    field :location, String, null: false
    field :creator_id, Integer, null: false
    field :complete, Boolean, null: true
  end
end
