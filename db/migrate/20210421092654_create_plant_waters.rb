class CreatePlantWaters < ActiveRecord::Migration[6.0]
  def change
    create_table :plant_waters do |t|
      t.references :plant, null: false, foreign_key: true
      t.references :water, null: false, foreign_key: true

      t.timestamps
    end
  end
end
