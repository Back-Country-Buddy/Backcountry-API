class CreatePlans < ActiveRecord::Migration[5.2]
  def change
    create_table :plans do |t|
      t.string :hazard_weather
      t.string :hazard_avalanche
      t.string :hazard_summary
      t.string :route_preview
      t.string :route_alternative
      t.string :emergency_plan
      t.string :debrief_conditions
      t.string :debrief_decisions
      t.string :debrief_plan
      t.references :tour, foreign_key: true

      t.timestamps
    end
  end
end
