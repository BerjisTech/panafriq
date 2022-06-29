# frozen_string_literal: true

class CreateServiceCategories < ActiveRecord::Migration[7.0]
  def change
    create_table :service_categories, id: :uuid do |t|
      t.text :name

      t.timestamps
    end
  end
end
