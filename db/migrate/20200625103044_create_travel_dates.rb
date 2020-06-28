class CreateTravelDates < ActiveRecord::Migration[5.2]
  def change
    create_table :travel_dates do |t|
      t.integer :tavel_id
      t.date :start_date
      t.date :end_date

      t.timestamps
    end
  end
end
