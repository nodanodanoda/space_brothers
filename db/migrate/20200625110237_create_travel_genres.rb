class CreateTravelGenres < ActiveRecord::Migration[5.2]
  def change
    create_table :travel_genres do |t|
      t.string :genre
      t.boolean :is_valid

      t.timestamps
    end
  end
end
