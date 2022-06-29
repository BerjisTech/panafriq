# frozen_string_literal: true

class CreateCustomers < ActiveRecord::Migration[7.0]
  def change
    create_table :customers, id: :uuid do |t|
      t.uuid :user_id
      t.uuid :company_id
      t.uuid :trucker_id
      t.uuid :storage_id

      t.timestamps
    end
    add_index :customers, :user_id
    add_index :customers, :company_id
  end
end
