class CreateMovieRentals < ActiveRecord::Migration
  def change
    create_table :movie_rentals do |t|
      t.references :user, index: true
      t.references :movie, index: true

      t.timestamps
    end
  end
end
