# frozen_string_literal: true

class CreateServiceVariants < ActiveRecord::Migration[7.0]
  def change
    create_table :service_variants, id: :uuid do |t|
      t.uuid :service_id
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
    add_index :service_variants, :service_id
    add_index :service_variants, :company_id
    add_index :service_variants, :category
  end
end
