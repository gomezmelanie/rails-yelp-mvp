# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

puts "Cleaning database..."
Restaurant.destroy_all

puts "Creating restaurants..."
ragazzi = {name: "Ragazzi", address: "sur les quais", phone_number: "0546567890", category: "italian"}
burger_king =  {name: "Burger King", address: "rue Sainte Catherine", phone_number: "0546569623", category: "belgian"}
iseo = {name: "Iseo", address: "rue de la Chaine", phone_number: "0546565342", category: "japanese"}
chez_albert =  {name: "Chez Albert", address: "rue Gargoulleau", phone_number: "0546564123", category: "french"}
le_marche = {name: "Le Marché", address: "rue du Port", phone_number: "0546569234", category: "french" }

[ragazzi, burger_king, iseo, chez_albert, le_marche].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end
puts "Finished!"
