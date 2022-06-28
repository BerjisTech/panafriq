class CreateTruckTypes < ActiveRecord::Migration[7.0]
  def change
    create_table :truck_types, id: :uuid do |t|
      t.text :name
      t.text :description

      t.timestamps
    end
  end
end
