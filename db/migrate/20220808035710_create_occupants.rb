class CreateOccupants < ActiveRecord::Migration[7.0]
  def change
    create_table :occupants do |t|
      t.string :name
      t.string :contact
      t.date :lease_end
      t.integer :apartment_id
      t.integer :tenement_id

      t.timestamps
    end
  end
end
