# frozen_string_literal: true

class CreateTruckers < ActiveRecord::Migration[7.0]
  def change
    create_table :truckers, id: :uuid do |t|
      t.uuid :user_id
      t.boolean :is_company
      t.string :country
      t.integer :truck_staff
      t.integer :drivers

      t.timestamps
    end
    add_index :truckers, :user_id
    add_index :truckers, :is_company
    add_index :truckers, :country
  end
end
