class CreateDrivers < ActiveRecord::Migration[7.0]
  def change
    create_table :drivers, id: :uuid do |t|
      t.uuid :user_id
      t.uuid :trucker_id
      t.datetime :invited_on
      t.datetime :joined_on
      t.boolean :is_active
      t.datetime :left_on
      t.text :reason_for_leaving
      t.uuid :staff_designation
      t.uuid :invited_by

      t.timestamps
    end
    add_index :drivers, :user_id
    add_index :drivers, :trucker_id
    add_index :drivers, :staff_designation
    add_index :drivers, :invited_by
  end
end
