class CreateCollectionPlants < ActiveRecord::Migration[6.0]
  def change
    create_table :collection_plants do |t|
      t.references :collection, null: false, type: :uuid, foreign_key: true
      t.references :plant, null: false, type: :uuid, foreign_key: true

      t.timestamps
    end
  end
end
