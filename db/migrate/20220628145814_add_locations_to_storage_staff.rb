# frozen_string_literal: true

class AddLocationsToStorageStaff < ActiveRecord::Migration[7.0]
  def change
    add_column :storage_staffs, :locations, :json
  end
end
