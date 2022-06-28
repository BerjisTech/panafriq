class CreateStaffDesignations < ActiveRecord::Migration[7.0]
  def change
    create_table :staff_designations, id: :uuid do |t|
      t.text :name

      t.timestamps
    end
  end
end
