class CreateLights < ActiveRecord::Migration[6.0]
  def change
    create_table :lights do |t|
      t.integer :level
      t.string :description
      t.string :ideal_location

      t.timestamps
    end
  end
end
