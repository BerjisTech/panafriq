class CreateStorageStaffs < ActiveRecord::Migration[7.0]
  def change
    create_table :storage_staffs, id: :uuid do |t|
      t.uuid :user_id
      t.uuid :storage_id
      t.datetime :invited_on
      t.datetime :joined_on
      t.boolean :is_active
      t.datetime :left_on
      t.text :reason_for_leaving
      t.uuid :staff_designation
      t.uuid :invited_by

      t.timestamps
    end
    add_index :storage_staffs, :user_id
    add_index :storage_staffs, :storage_id
    add_index :storage_staffs, :staff_designation
    add_index :storage_staffs, :invited_by
  end
end
