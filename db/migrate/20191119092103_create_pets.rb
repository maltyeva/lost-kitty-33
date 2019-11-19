class CreatePets < ActiveRecord::Migration[5.2]
  def change
    create_table :pets do |t|
      t.string :location
      t.string :color
      t.string :species
      t.datetime :date_found
      t.string :size
      t.boolean :returned, default: false

      t.timestamps
    end
  end
end
