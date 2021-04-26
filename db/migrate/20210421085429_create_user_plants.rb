class CreateUserPlants < ActiveRecord::Migration[6.0]
  def change
    create_table :user_plants do |t|
      t.references :user, null: false, type: :uuid, foreign_key: true
      t.references :plant, null: false, type: :uuid, foreign_key: true

      t.timestamps
    end
  end
end
