class CreateStorageLocations < ActiveRecord::Migration[7.0]
  def change
    create_table :storage_locations, id: :uuid do |t|
      t.uuid :storage_id
      t.integer :products
      t.integer :services
      t.text :name
      t.uuid :user_id
      t.integer :storage_size
      t.uuid :storage_type
      t.float :storage_price

      t.timestamps
    end
    add_index :storage_locations, :storage_id
    add_index :storage_locations, :user_id
    add_index :storage_locations, :storage_type
  end
end
