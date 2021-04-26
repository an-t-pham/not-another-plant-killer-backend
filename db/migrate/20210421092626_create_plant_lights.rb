class CreatePlantLights < ActiveRecord::Migration[6.0]
  def change
    create_table :plant_lights do |t|
      t.references :plant, null: false, type: :uuid, foreign_key: true
      t.references :light, null: false, foreign_key: true

      t.timestamps
    end
  end
end
