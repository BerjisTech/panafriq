# frozen_string_literal: true

class AddLocationsToStaff < ActiveRecord::Migration[7.0]
  def change
    add_column :staffs, :locations, :json
  end
end
