class User < ActiveRecord::Base
  has_many :movie_rentals
  has_many :movies, through: :movie_rentals

end
