class CreateWaters < ActiveRecord::Migration[6.0]
  def change
    create_table :waters do |t|
      t.integer :level
      t.string :description

      t.timestamps
    end
  end
end
