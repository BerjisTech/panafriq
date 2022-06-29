# frozen_string_literal: true

class CreateProductCategories < ActiveRecord::Migration[7.0]
  def change
    create_table :product_categories, id: :uuid do |t|
      t.text :name

      t.timestamps
    end
  end
end
