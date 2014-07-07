# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Movie.destroy_all
MovieRental.destroy_all
User.destroy_all

temple = Movie.create title: "Indiana Jones and the Temple of Doom"
gold = Movie.create title: "Goldfinger"
fava = Movie.create title: "Silence of the Lambs"
fashion = Movie.create title: "The Devil Wears Prada"
ocean = Movie.create title: "Ocean's Eleven"

harry = User.create name: "Harrison Ford"
sean = User.create name: "Sean Connery"
tony = User.create name: "Anthony Hopkins"
meryl = User.create name: "Meryl Streep"
george = User.create name: "George Clooney"

harry.users << temple
gold.users << sean
fava.users << tony
fashion.users << meryl
ocean.users << george
