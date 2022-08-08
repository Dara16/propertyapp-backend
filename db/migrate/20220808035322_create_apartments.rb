class CreateApartments < ActiveRecord::Migration[7.0]
  def change
    create_table :apartments do |t|
      t.integer :number
      t.string :style
      t.integer :rent
      t.integer :tenement_id

      t.timestamps
    end
  end
end
