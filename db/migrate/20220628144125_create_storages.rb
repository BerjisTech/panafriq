# frozen_string_literal: true

class CreateStorages < ActiveRecord::Migration[7.0]
  def change
    create_table :storages, id: :uuid do |t|
      t.uuid :user_id
      t.integer :locations
      t.integer :storage_staff
      t.uuid :storage_type
      t.float :storage_price

      t.timestamps
    end
    add_index :storages, :user_id
    add_index :storages, :storage_type
  end
end
