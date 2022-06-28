class CreateTrucks < ActiveRecord::Migration[7.0]
  def change
    create_table :trucks, id: :uuid do |t|
      t.uuid :trucker_id
      t.uuid :truck_type
      t.float :truck_size
      t.float :truck_age
      t.integer :trips
      t.string :number_plate
      t.string :registration_country
      t.boolean :available

      t.timestamps
    end
    add_index :trucks, :trucker_id
    add_index :trucks, :truck_type
    add_index :trucks, :truck_size
    add_index :trucks, :truck_age
    add_index :trucks, :trips
    add_index :trucks, :number_plate, unique: true
    add_index :trucks, :registration_country
  end
end
