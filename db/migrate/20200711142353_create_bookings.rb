class CreateBookings < ActiveRecord::Migration[5.2]
  def change
    create_table :bookings do |t|
      t.string :travel_id
      t.string :customer_id
      t.date   :start_day
      t.date   :end_day

      t.timestamps
    end
  end
end
