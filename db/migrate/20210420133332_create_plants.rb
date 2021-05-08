class CreatePlants < ActiveRecord::Migration[6.0]
  def change
    create_table :plants, id: :uuid do |t|
      t.string :name
      t.string :aka
      t.string :description
      t.integer :size_pot
      t.boolean :pet_friendly
      t.string :image_url

      t.timestamps
    end
  end
end
