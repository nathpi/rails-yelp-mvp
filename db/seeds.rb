# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
puts "Cleaning database..."
Restaurant.destroy_all

puts "Creating restaurants..."
basilicata = {name: "Basilicata", address: "R. Treze de Maio, 596", category: "italian"}
leggera = {name: "Leggera", address: "R. Diana, 80", category: "belgian"}
tribunal = {name: "Tribunal", address: "R. Jericó, 15", category: "japanese"}
baladares = {name: "Baladares", address: "R. Califórnia, 24", category: "chinese"}
le_pain = {name: "Le Pain", address: "R. Afonso Brás, 206", category: "french"}

[basilicata, leggera, tribunal, baladares, le_pain].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end
puts "Finished!"
