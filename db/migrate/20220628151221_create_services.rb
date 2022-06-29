# frozen_string_literal: true

class CreateServices < ActiveRecord::Migration[7.0]
  def change
    create_table :services, id: :uuid do |t|
      t.text :name
      t.float :price
      t.uuid :company_id
      t.text :description
      t.uuid :category
      t.json :offered_locations
      t.integer :quantity
      t.boolean :available

      t.timestamps
    end
    add_index :services, :company_id
    add_index :services, :category
  end
end
