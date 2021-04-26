class CreateCollections < ActiveRecord::Migration[6.0]
  def change
    create_table :collections, id: :uuid do |t|
      t.string :name
      t.references :user, null: false,  type: :uuid, foreign_key: true

      t.timestamps
    end
  end
end
