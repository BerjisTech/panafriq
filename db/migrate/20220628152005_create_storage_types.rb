# frozen_string_literal: true

class CreateStorageTypes < ActiveRecord::Migration[7.0]
  def change
    create_table :storage_types, id: :uuid do |t|
      t.uuid :text

      t.timestamps
    end
  end
end
