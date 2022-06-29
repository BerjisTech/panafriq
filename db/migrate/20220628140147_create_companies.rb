# frozen_string_literal: true

class CreateCompanies < ActiveRecord::Migration[7.0]
  def change
    create_table :companies, id: :uuid do |t|
      t.uuid :user_id
      t.text :name
      t.integer :locations
      t.integer :products
      t.integer :services
      t.integer :staff

      t.timestamps
    end
    add_index :companies, :user_id
  end
end
