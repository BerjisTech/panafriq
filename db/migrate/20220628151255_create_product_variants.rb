# frozen_string_literal: true

class CreateProductVariants < ActiveRecord::Migration[7.0]
  def change
    create_table :product_variants, id: :uuid do |t|
      t.uuid :product_id
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
    add_index :product_variants, :product_id
    add_index :product_variants, :company_id
    add_index :product_variants, :category
  end
end
