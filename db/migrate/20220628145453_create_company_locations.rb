# frozen_string_literal: true

class CreateCompanyLocations < ActiveRecord::Migration[7.0]
  def change
    create_table :company_locations, id: :uuid do |t|
      t.uuid :company_id
      t.integer :products
      t.integer :services
      t.text :name
      t.uuid :user_id

      t.timestamps
    end
    add_index :company_locations, :company_id
    add_index :company_locations, :user_id
  end
end
