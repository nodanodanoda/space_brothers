class CreateTravels < ActiveRecord::Migration[5.2]
  def change
    create_table :travels do |t|
      t.integer :travel_genre_id
      t.string :name
      t.text :description
      t.integer :price
      t.text :picture_id
      t.integer :sales_status

      t.timestamps
    end
  end
end
