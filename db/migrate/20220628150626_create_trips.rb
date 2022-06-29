# frozen_string_literal: true

class CreateTrips < ActiveRecord::Migration[7.0]
  def change
    create_table :trips, id: :uuid do |t|
      t.uuid :truck_id
      t.uuid :driver_id
      t.text :departure
      t.text :destination
      t.datetime :trip_date
      t.datetime :departure_time
      t.datetime :arrival_time
      t.string :goods_status
      t.float :customer_pay
      t.float :fine
      t.float :final_truck_pay
      t.float :trucker_pay
      t.float :driver_cut

      t.timestamps
    end
    add_index :trips, :truck_id
    add_index :trips, :driver_id
    add_index :trips, :departure
    add_index :trips, :destination
  end
end
