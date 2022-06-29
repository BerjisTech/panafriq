# frozen_string_literal: true

class CreateTripFines < ActiveRecord::Migration[7.0]
  def change
    create_table :trip_fines, id: :uuid do |t|
      t.uuid :trip_id
      t.text :fine
      t.float :price

      t.timestamps
    end
    add_index :trip_fines, :trip_id
  end
end
