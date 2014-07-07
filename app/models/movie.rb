class Movie < ActiveRecord::Base
    has_many :movie_rentals
  has_many :users, through: :movie_rentals

  def rent(movie)
    movies << movie
  end
end
