# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
some_comment = "Lorem ipsum odor amet, consectetuer adipiscing elit. Hac facilisis bibendum ex rutrum, eu lectus massa mi. Phasellus ultrices aenean penatibus laoreet iaculis; libero erat. Apharetra rhoncus inceptos bibendum proin ornare libero. Purus augue egestas, tellus fusce purus amet!"
puts "Creating new reviews..."

puts "Cleaning the Favorites DB..."
Favorite.destroy_all if Rails.env.development?

puts "Cleaning the Reviews DB..."
Review.destroy_all if Rails.env.development?

puts "Cleaning the Cars DB..."
Car.destroy_all if Rails.env.development?

puts "Cleaning the Owners DB..."
Owner.destroy_all if Rails.env.development?

puts "Creating new owners..."
owner_1 = Owner.create!(nickname: "Me_555")
owner_2 = Owner.create!(nickname: "Ro_222")
owner_3 = Owner.create!(nickname: "Go_444")
owner_4 = Owner.create!(nickname: "Ty_333")
owner_5 = Owner.create!(nickname: "Nb_111")
owner_6 = Owner.create!(nickname: "Vr_777")

puts "Creating new cars..."
car_1 = Car.create!(brand: "Ferrari", model: "12Cilindri", year: 20024, fuel: "Petrol", owner: owner_1)
car_2 = Car.create!(brand: "Audi", model: "DB5", year: 1965, fuel: "Unleaded Petrol", owner: owner_2)
car_3 = Car.create!(brand: "Honda", model: "Accord", year: 2005, fuel: "Petrol", owner: owner_3)
car_4 = Car.create!(brand: "Infiniti", model: "Q60", year: 2023, fuel: "Petrol", owner: owner_4)
car_5 = Car.create!(brand: "Maserati", model: "GranCabrio", year: 2020, fuel: "Petrol", owner: owner_5)
car_6 = Car.create!(brand: "Volvo", model: "EC40", year: 2025, fuel: "Petrol", owner: owner_6)

review_1 = Review.create!(comment: some_comment.truncate(250), rating: rand(2..5.0).floor(1).to_i.to_i, car: car_1)
review_2 = Review.create!(comment: some_comment.truncate(250), rating: rand(2..5.0).floor(1).to_i, car: car_2)
review_3 = Review.create!(comment: some_comment.truncate(250), rating: rand(2..5.0).floor(1).to_i, car: car_3)
review_4 = Review.create!(comment: some_comment.truncate(250), rating: rand(2..5.0).floor(1).to_i, car: car_4)
review_5 = Review.create!(comment: some_comment.truncate(250), rating: rand(2..5.0).floor(1).to_i, car: car_5)
review_6 = Review.create!(comment: some_comment.truncate(250), rating: rand(2..5.0).floor(1).to_i, car: car_6)
review_7 = Review.create!(comment: some_comment.truncate(250), rating: rand(2..5.0).floor(1).to_i, car: car_3)
review_9 = Review.create!(comment: some_comment.truncate(250), rating: rand(2..5.0).floor(1).to_i, car: car_2)
review_10 = Review.create!(comment: some_comment.truncate(250), rating: rand(2..5.0).floor(1).to_i, car: car_1)

puts "Creating new favorites..."
favirite_1 = Favorite.create!(car: car_1)
favirite_1 = Favorite.create!(car: car_1)

puts "Done! Created #{Owner.count} owners!"
puts "****************************************"
puts "Done! Created #{Car.count} cars!"
puts "****************************************"
puts "Done! Created #{Review.count} review!"
puts "****************************************"
puts "Done! Created #{Favorite.count} favorite"
puts "****************************************"
